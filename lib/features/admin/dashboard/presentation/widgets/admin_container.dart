import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/widgets/custom_admin_container.dart';
import 'package:store_app/core/widgets/loading_shimmer.dart';
import 'package:store_app/core/widgets/text_app.dart';

class DashBoardContainer extends StatelessWidget {
  const DashBoardContainer({
    required this.title,
    required this.number,
    required this.image,
    required this.isLoading,
    super.key,
  });

  final String title;
  final String number;
  final String image;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                TextApp(
                  text: title,
                  theme: context.textStyle.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeightHelper.bold,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
                const Spacer(),
                if (isLoading)
                  LoadingShimmer(height: 30.h, width: 100.w)
                else
                  TextApp(
                    text: number,
                    theme: context.textStyle.copyWith(
                      fontSize: 24.sp,
                      fontWeight: FontWeightHelper.bold,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                    ),
                  ),
                const Spacer(),
              ],
            ),
            SizedBox(
              height: 90,
              child: Image.asset(image),
            )
          ],
        ),
      ),
    );
  }
}
