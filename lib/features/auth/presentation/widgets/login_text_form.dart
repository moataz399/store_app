import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/helpers/app_regex.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';

class LoginTextForm extends StatefulWidget {
  const LoginTextForm({super.key});

  @override
  State<LoginTextForm> createState() => _LoginTextFormState();
}

class _LoginTextFormState extends State<LoginTextForm> {
  bool isShowPassword = true;

  late AuthBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = context.read<AuthBloc>();
  }

  @override
  void dispose() {
    _bloc.emailController.dispose();
    _bloc.passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();

    return Form(
      key: bloc.formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: bloc.emailController,
            hintText: context.translate(LangKeys.email),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(bloc.emailController.text)) {
                return context.translate(LangKeys.validEmail);
              }
              return null;
            },
          ),
          verticalSpace(25),
          AppTextFormField(
            controller: bloc.passwordController,
            hintText: context.translate(LangKeys.password),
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 6) {
                return context.translate(LangKeys.validPasswrod);
              }
              return null;
            },
            isObscureText: isShowPassword,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
              icon: Icon(
                isShowPassword ? Icons.visibility_off : Icons.visibility,
                color: context.color.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
