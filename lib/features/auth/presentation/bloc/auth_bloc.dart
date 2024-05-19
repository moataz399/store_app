import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/services/shared_pref/pref_keys.dart';
import 'package:store_app/core/services/shared_pref/shared_pref.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/register_request_body.dart';
import 'package:store_app/features/auth/data/repos/auth_repo.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepo) : super(const _Initial()) {
    on<LoginEvent>(_login);
    on<RegisterEvent>(_register);
  }

  final AuthRepo authRepo;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final response = await authRepo.login(
      body: LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
    );
    await response.when(
      success: (loginResponse) async {
        final userToken = loginResponse.data?.login?.accessToken ?? '';

        await SharedPref().setString(PrefKeys.accessToken, userToken);
        final user = await authRepo.getUserRole(userToken);
        await SharedPref().setString(PrefKeys.userRole, user.userRole ?? '');

        await SharedPref().setInt(PrefKeys.userId, user.userId ?? 0);

        emit(AuthState.success(userRole: user.userRole ?? ''));
      },
      failure: (error) {
        emit(AuthState.error(error: error));
      },
    );
  }

  FutureOr<void> _register(RegisterEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final response = await authRepo.register(
      body: RegisterRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text,
        name: nameController.text.trim(),
        avatar: event.imageUrl,
      ),
    );
    await response.when(
      success: (registerResponse) async {
        final userId = registerResponse.data?.addUser?.id;
        final userEmail = registerResponse.data?.addUser?.email;
        debugPrint('User ID => $userId');
        debugPrint('User Email => $userEmail');

        add(const AuthEvent.login());
      },
      failure: (error) {
        emit(AuthState.error(error: error));
      },
    );
  }
}
