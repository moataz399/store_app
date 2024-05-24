
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/text_app.dart';

import 'package:store_app/core/style/fonts/font_family_helper.dart';

class TableCellTitleWidget extends StatelessWidget {
  const TableCellTitleWidget({
    required this.icon,
    required this.title,
    super.key,
  });
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
        vertical: 8.h,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 20,
          ),
          SizedBox(
            width: 5.w,
          ),
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 15.sp,
              fontWeight: FontWeightHelper.medium,
              fontFamily: FontFamilyHelper.poppinsEnglish,
            ),
          )
        ],
      ),
    );
  }
}
