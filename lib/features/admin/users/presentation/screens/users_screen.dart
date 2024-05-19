import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';
import 'package:store_app/features/admin/users/presentation/bloc/delete_bloc/delete_user_bloc.dart';
import 'package:store_app/features/admin/users/presentation/bloc/users_bloc.dart';
import 'package:store_app/features/admin/users/presentation/screens/users_body.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<DeleteUserBloc>()),
        BlocProvider(
          create: (context) =>
              getIt<UsersBloc>()..add(const UsersEvent.getAllUsers(isLoading: true)),

        ),
      ],
      child: Scaffold(
        appBar: AdminAppBar(
          isMain: true,
          backgroundColor: ColorsDark.mainColor,
          title: context.translate(LangKeys.users),
        ),
        body: const UsersBody(),
      ),
    );
  }
}
