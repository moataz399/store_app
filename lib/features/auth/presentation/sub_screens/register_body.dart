import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routing/routes.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:store_app/features/auth/presentation/widgets/dart_and_lang_buttons.dart';
import 'package:store_app/features/auth/presentation/widgets/register_button.dart';
import 'package:store_app/features/auth/presentation/widgets/register_text_form.dart';
import 'package:store_app/features/auth/presentation/widgets/user_avatar_image.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

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
              title: context.translate(LangKeys.signUp),
              description: context.translate(LangKeys.signUpWelcome),
            ),
            verticalSpace(30),
            const UserAvatarImage(),
            verticalSpace(30),
            const RegisterTextForm(),
            verticalSpace(20),
            const RegisterButton(),
            verticalSpace(20),
            CustomFadeInDown(
              duration: 400,
              child: InkWell(
                onTap: () {
                  context.pushNamed(Routes.loginScreen);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 14.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
