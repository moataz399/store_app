
import 'package:flutter/material.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';
import 'package:store_app/features/admin/notifications/presentation/screens/add_notification_body.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsDark.mainColor,
      appBar: AdminAppBar(
        isMain: true,
        backgroundColor: ColorsDark.mainColor,
          title: context.translate(LangKeys.notifications)
      ),
      body:const AddNotificationBody(),
    );
  }
}
