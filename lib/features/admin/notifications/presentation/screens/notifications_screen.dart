import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/widgets/AdminAppBar.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/add_notification_bloc/add_notification_bloc.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/get_all_notification_admin_bloc/get_all_notification_admin_bloc.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/send_notification_bloc/send_notification_bloc.dart';
import 'package:store_app/features/admin/notifications/presentation/screens/add_notification_body.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GetAllNotificationAdminBloc>()
            ..add(
              const GetAllNotificationAdminEvent.getAllNotification(),
            ),
        ),
        BlocProvider(create: (context) => getIt<AddNotificationBloc>()),
        BlocProvider(create: (context) => getIt<SendNotificationBloc>()),
      ],
      child: Scaffold(
        backgroundColor: ColorsDark.mainColor,
        appBar: AdminAppBar(
            isMain: true,
            backgroundColor: ColorsDark.mainColor,
            title: context.translate(LangKeys.notifications)),
        body: const AddNotificationBody(),
      ),
    );
  }
}
