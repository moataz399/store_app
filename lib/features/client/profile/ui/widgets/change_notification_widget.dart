import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/services/push_notification/fcm.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/text_app.dart';

class ChangeNotifications extends StatelessWidget {
  const ChangeNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.notifications_active,
          color: context.color.textColor,
        ),
        SizedBox(width: 10.w),
        TextApp(
          text: context.translate(LangKeys.notifications),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.regular,
          ),
        ),
        const Spacer(),

        // radio buttons
        ValueListenableBuilder(
          valueListenable: FirebaseCloudMessaging().isNotificationEnabled,
          builder: (_, value, __) {
            return Transform.scale(
              scale: 0.75,
              child: Switch.adaptive(
                value: value,
                inactiveTrackColor: const Color(0xff262626),
                activeColor: Colors.green,
                onChanged: (value) {
                  FirebaseCloudMessaging()
                      .controllerForUserSubscription(context);
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
