import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/app_regex.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';

class LoginTextForm extends StatelessWidget {
  const LoginTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
            hintText: context.translate(LangKeys.email),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return context.translate(LangKeys.validEmail);
              }
              return null;
            },
          ),
          verticalSpace(25),
          AppTextFormField(
            hintText: context.translate(LangKeys.password),
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
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
