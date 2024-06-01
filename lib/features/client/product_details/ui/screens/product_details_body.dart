
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/client/product_details/data/models/product_details_response.dart';
import 'package:store_app/features/client/product_details/ui/widgets/product_details_image_slider.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({required this.productModel, super.key});

  final ProductDetailsModel productModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // share and favorite button
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Share Button

                // BlocBuilder<ShareCubit, ShareState>(
                //   builder: (context, state) {
                //     return state.when(
                //       initial: () {
                //         return CustomShareButton(
                //           size: 30,
                //           onTap: () {
                //             context.read<ShareCubit>().sendDynamicLinkProduct(
                //               imageUrl: productModel.images.first,
                //               productId:
                //               int.parse(productModel.id.toString()),
                //               title: productModel.title ?? '',
                //             );
                //           },
                //         );
                //       },
                //       loading: (id) {
                //         if (id.toString() == productModel.id) {
                //           return Padding(
                //             padding: EdgeInsets.only(left: 10.w),
                //             child: SizedBox(
                //               height: 25.h,
                //               width: 25.w,
                //               child: CircularProgressIndicator(
                //                 color: context.color.bluePinkLight,
                //               ),
                //             ),
                //           );
                //         }
                //         return CustomShareButton(
                //           size: 30,
                //           onTap: () {},
                //         );
                //       },
                //       success: () {
                //         return CustomShareButton(
                //           size: 30,
                //           onTap: () {
                //             context.read<ShareCubit>().sendDynamicLinkProduct(
                //               imageUrl: productModel.images.first,
                //               productId:
                //               int.parse(productModel.id.toString()),
                //               title: productModel.title ?? '',
                //             );
                //           },
                //         );
                //       },
                //     );
                //   },
                // ),
                //Favorite Button
                // BlocBuilder<FavoritesCubit, FavoritesState>(
                //   builder: (context, state) {
                //     return CustomFavoriteButton(
                //       size: 30,
                //       isFavorites: context
                //           .read<FavoritesCubit>()
                //           .isFavorites(productModel.id ?? ''),
                //       onTap: () async {
                //         await context.read<FavoritesCubit>().manageFavourites(
                //           productId: productModel.id ?? '',
                //           title: productModel.title ?? '',
                //           image: productModel.images.first,
                //           price: productModel.price.toString(),
                //           categoryName: productModel.category!.name,
                //         );
                //       },
                //     );
                //   },
                // ),
              ],
            ),
            SizedBox(height: 10.h),
            //Image
            ProductDetailsImageSlider(
              imageList: productModel.images,
            ),

            SizedBox(height: 30.h),
            //Title
            TextApp(
              text: productModel.title ?? '',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            SizedBox(height: 15.h),
            //description
            TextApp(
              text: productModel.description ?? '',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.regular,
                color: context.color.textColor,
                height: 1.5,
              ),
            ),
            SizedBox(height: 30.h),
          ],
        ),
      ),
    );
  }
}
