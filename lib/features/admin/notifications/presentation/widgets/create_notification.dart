import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/notifications/presentation/blocs/add_notification_bloc/add_notification_bloc.dart';

import 'package:store_app/features/admin/notifications/presentation/widgets/create_notification_bottom_sheet.dart';

class CreateNotification extends StatelessWidget {
  const CreateNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // titile
        TextApp(
          text: 'Notifications',
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.poppinsEnglish,
          ),
        ),
        // bottom sheet
        CustomButton(
          onPressed: () {
            CustomBottomSheet.showBottomSheet(
              context: context,
              widget: BlocProvider(
                create: (context) => getIt<AddNotificationBloc>(),
                child: const CreateNotificationBottomSheet(),
              ),
              // whenComplete: () {
              //   context.read<GetAllNotificationAdminBloc>().add(
              //         const GetAllNotificationAdminEvent.getAllNotificion(),
              //       );
              // },
            );
          },
          backgroundColor: ColorsDark.blueDark,
          lastRadius: 10,
          threeRadius: 10,
          text: 'Add',
          width: 90.w,
          height: 35.h,
        ),
      ],
    );
  }
}
