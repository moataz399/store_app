import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/helpers/app_regex.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';

class RegisterTextForm extends StatelessWidget {
  const RegisterTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    return Form(
      key: bloc.formKey,
      child: Column(
        children: [
          AppTextFormField(
            controller: bloc.nameController,
            hintText: context.translate(LangKeys.fullName),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return context.translate(LangKeys.validName);
              }
              return null;
            },
          ),
          verticalSpace(25),
          AppTextFormField(
            controller: bloc.emailController,
            hintText: context.translate(LangKeys.email),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(bloc.emailController.text.trim())) {
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
          ),
        ],
      ),
    );
  }
}
