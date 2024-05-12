import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routing/routes.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/custom_linear_button.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return CustomFadeInRight(
      duration: 400,
      child: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return CustomLinearButton(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                onPressed: () {},
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            },
            orElse: () {
              return CustomLinearButton(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                onPressed: () {
                  if (bloc.formKey.currentState!.validate()) {
                    bloc.add(const AuthEvent.login());
                  }
                },
                child: TextApp(
                  text: context.translate(LangKeys.login),
                  theme: context.textStyle.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              );
            },
          );
        },
        listener: (context, state) {
          state.whenOrNull(
            success: (userRole) {
              ShowToast.showToastSuccessTop(
                context: context,
                message: context.translate(LangKeys.loggedSuccessfully),
              );
              if (userRole == 'admin') {
                context.pushNamedAndRemoveUntil(Routes.homeAdminScreen);
              } else {
                context.pushNamedAndRemoveUntil(Routes.homeScreen);
              }
            },
            error: (message) {
              ShowToast.showToastErrorTop(
                context: context,
                message: context.translate(message),
              );
            },
          );
        },
      ),
    );
  }
}
