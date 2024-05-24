import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:store_app/core/app/app_cubit/app_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/images/app_Images.dart';
import 'package:store_app/core/widgets/text_app.dart';

class ChangeLightMode extends StatelessWidget {
  const ChangeLightMode({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.darkMode,
          color: context.color.textColor,
        ),
        SizedBox(width: 10.w),
        TextApp(
          text: context.translate(LangKeys.darkMode),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),

        // radio buttons
        Transform.scale(
          scale: 0.75,
          child: Switch.adaptive(
            value: cubit.isDark,
            inactiveTrackColor: const Color(0xff262626),
            activeColor: Colors.green,
            onChanged: (value) {
              cubit.changeAppThemeMode();
            },
          ),
        ),
      ],
    );
  }
}
