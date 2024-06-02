import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routing/routes.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/images/app_Images.dart';
import 'package:store_app/core/utils/enums.dart';
import 'package:store_app/core/widgets/custom_linear_button.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/client/main/ui/cubit/main_cubit.dart';

class MainCustomerAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const MainCustomerAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<MainCubit>();
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: context.color.mainColor,
      elevation: 0,
      title: BlocBuilder(
        bloc: cubit,
        builder: (context, state) {
          if (cubit.navBarEnum == NavBarEnum.home) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomFadeInRight(
                  duration: 800,
                  child: TextApp(
                    text: context.translate(LangKeys.chooseProducts),
                    theme: context.textStyle.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeightHelper.bold,
                      color: context.color.textColor,
                    ),
                  ),
                ),
                CustomFadeInLeft(
                  duration: 800,
                  child: CustomLinearButton(
                    onPressed: () {
                      context.pushNamed(Routes.search);
                    },
                    child: Center(
                      child: SvgPicture.asset(AppImages.search),
                    ),
                  ),
                )
              ],
            );
          } else if (cubit.navBarEnum == NavBarEnum.favorites) {
            return CustomFadeInRight(
              duration: 800,
              child: TextApp(
                text: 'Your Favorite',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.textColor,
                ),
              ),
            );
          } else if (cubit.navBarEnum == NavBarEnum.notifications) {
            return CustomFadeInRight(
              duration: 800,
              child: TextApp(
                text: 'Notifications',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.textColor,
                ),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 70.h);
}
