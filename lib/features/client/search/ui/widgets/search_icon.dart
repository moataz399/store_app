
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/text_app.dart';

class SearchFormDataIcon extends StatelessWidget {
  const SearchFormDataIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.search_sharp,
          color: context.color.textColor,
          size: 150,
        ),
        SizedBox(height: 10.h),
        TextApp(
          text: 'Search For Data',
          theme: context.textStyle.copyWith(
            fontWeight: FontWeightHelper.bold,
            fontSize: 18.sp,
          ),
        ),
      ],
    );
  }
}
