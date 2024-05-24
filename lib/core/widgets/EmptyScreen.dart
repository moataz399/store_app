
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/widgets/text_app.dart';

import '../style/fonts/Font_weight_helper.dart';

class EmptyScreen extends StatelessWidget {
  const EmptyScreen({super.key, this.title = 'No Data'});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Opacity(
        opacity: 0.6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/core/empty_screen.png'),
            TextApp(
              text: title!,
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
