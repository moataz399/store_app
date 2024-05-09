import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/auth/presentation/widgets/auth_title_info.dart';

import 'package:store_app/features/auth/presentation/widgets/dart_and_lang_buttons.dart';
import 'package:store_app/features/auth/presentation/widgets/login_button.dart';
import 'package:store_app/features/auth/presentation/widgets/login_text_form.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          children: [
            const DarkAndLangButtons(),
            verticalSpace(50),
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),
            verticalSpace(30),
            const LoginTextForm(),
            verticalSpace(30),
            const LoginButton(),
            verticalSpace(30),
            CustomFadeInDown(
              duration: 400,
              child: TextApp(
                text: context.translate(LangKeys.createAccount),
                theme: context.textStyle.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.bluePinkLight,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
