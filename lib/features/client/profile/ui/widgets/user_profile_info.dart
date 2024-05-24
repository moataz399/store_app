import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/helpers/string_extension.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/auth/data/models/user_role_response.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key, required this.userRoleResponse});

  final UserRoleResponse userRoleResponse;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(45),
          child: CachedNetworkImage(
            imageUrl: userRoleResponse.image ?? "",
            fit: BoxFit.fill,
            width: 80.w,
            height: 80.h,
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        verticalSpace(5),
        TextApp(
          text: userRoleResponse.name!.toLowerCase().toCapitalized(),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
        verticalSpace(5),
        TextApp(
          text: userRoleResponse.email ?? '',
          theme: context.textStyle.copyWith(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
