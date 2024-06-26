
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/features/admin/notifications/data/models/add_notification_model.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/get_all_notification_admin_bloc/get_all_notification_admin_bloc.dart';
import 'package:store_app/features/admin/notifications/presentation/widgets/edit_notification_bottom_sheet.dart';

class EditNotification extends StatelessWidget {
  const EditNotification({required this.notificationModel, super.key});

  final AddNotificationModel notificationModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomBottomSheet.showBottomSheet(
          context: context,
          widget: EditNotificationBottomSheet(
            notificationModel: notificationModel,
          ),
          whenComplete: () {
            context.read<GetAllNotificationAdminBloc>().add(
              const GetAllNotificationAdminEvent.getAllNotification(),
            );
          },
        );
      },
      child: const Icon(
        Icons.edit,
        color: Colors.yellow,
      ),
    );
  }
}
