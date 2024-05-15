import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/custom_admin_container.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/edit_category_bottom_sheet.dart';

class AdminCategoryItem extends StatelessWidget {
  const AdminCategoryItem(
      {super.key, required this.title, required this.imageUrl});

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 130.h,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                TextApp(
                  text: title,
                  theme: context.textStyle.copyWith(
                    color: context.color.textColor,
                    fontSize: 18.h,
                    fontWeight: FontWeightHelper.semiBold,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        CustomBottomSheet.showBottomSheet(
                          context: context,
                          widget: EditCategoryBottomSheetWidget(),
                        );
                      },
                      icon: const Icon(Icons.edit),
                      color: Colors.green,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete),
                      color: Colors.red,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Flexible(
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                // 'https://img.freepik.com/premium-photo/laptop-front-view_426604-1004.jpg?w=1060',

                fit: BoxFit.cover,
                height: 90.h,
                width: 100.w,
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
