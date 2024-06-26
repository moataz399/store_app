
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/widgets/EmptyScreen.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/get_all_notification_admin_bloc/get_all_notification_admin_bloc.dart';
import 'package:store_app/features/admin/notifications/presentation/widgets/add_notification_item.dart';
import 'package:store_app/features/admin/notifications/presentation/widgets/create_notification.dart';

class AddNotificationBody extends StatelessWidget {
  const AddNotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Column(
        children: [
          // create notification title
          const CreateNotification(),
          //get all notifications
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(height: 20.h),
                ),
                SliverToBoxAdapter(
                  child: BlocBuilder<GetAllNotificationAdminBloc,
                      GetAllNotificationAdminState>(
                    builder: (context, state) {
                      return state.when(
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          );
                        },
                        success: (notificationList) {
                          return ListView.separated(
                            itemCount: notificationList.length,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return AddNotificationItem(
                                notificationModel: notificationList[index],
                                index: index,
                              );
                            },
                            separatorBuilder: (context, index) =>
                                SizedBox(height: 15.h),
                          );
                        },
                        empty: EmptyScreen.new,
                        error: Text.new,
                      );
                    },
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 20.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
