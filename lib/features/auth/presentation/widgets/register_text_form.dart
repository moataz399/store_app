import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/app_regex.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';

class RegisterTextForm extends StatelessWidget {
  const RegisterTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          AppTextFormField(
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
