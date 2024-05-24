import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/string_extension.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/widgets/custom_admin_container.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/admin_products_bloc.dart';
import 'package:store_app/features/admin/products/presentation/bloc/update_bloc/update_product_bloc.dart';
import 'package:store_app/features/admin/products/presentation/widgets/delete_product_widget.dart';
import 'package:store_app/features/admin/products/presentation/widgets/update_product_bottom_sheet.dart';

class ProductAdminItem extends StatelessWidget {
  const ProductAdminItem({
    required this.imageUrl,
    required this.title,
    required this.categoryName,
    required this.price,
    required this.productId,
    required this.imageList,
    required this.description,
    required this.categoryId,
    super.key,
  });

  final String imageUrl;
  final String title;
  final String categoryName;
  final String description;
  final String price;
  final String productId;
  final String categoryId;
  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 250.h,
      width: 165.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             // Delete Button
              DeleteProductWidget(
                productId: productId,
              ),
              //Update Button
              IconButton(
                onPressed: () {
                  CustomBottomSheet.showBottomSheet(

                    context: context,
                    widget: MultiBlocProvider(
                      providers: [
                        BlocProvider(
                          create: (context) => getIt<UpdateProductBloc>(),
                        ),
                        BlocProvider(
                          create: (context) => getIt<UploadImageCubit>(),
                        ),
                        BlocProvider(
                          create: (context) => getIt<CategoriesBloc>()
                            ..add(
                              const CategoriesEvent.getCategories(),
                            ),
                        ),
                      ],
                      child: UpdateProductBottomSheet(
                        imageList: imageList,
                        categoryName: categoryName,
                        description: description,
                        price: price,
                        productId: productId,
                        title: title,
                        categoryId: categoryId,
                      ),
                    ),
                    whenComplete: () {
                      context.read<AdminProductsBloc>().add(
                            const AdminProductsEvent.getAllProducts(
                                isNotLoading: true),
                          );
                    },
                  );
                },
                padding: EdgeInsets.zero,
                icon: const Icon(
                  Icons.edit,
                  color: Colors.green,
                ),
              ),
            ],
          ),
          //Show Image
          Flexible(
            child: Center(
              child: CachedNetworkImage(
                height: 200.h,
                width: 120.w,
                imageUrl: imageUrl.imageProductFormat(),
                errorWidget: (context, url, error) => const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 70,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          // title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: title,
              theme: context.textStyle.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
              maxLines: 1,
            ),
          ),
          SizedBox(height: 5.h),
          // Category Name
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: categoryName,
              theme: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
              maxLines: 1,
            ),
          ),
          SizedBox(height: 5.h),
          // Price
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: TextApp(
              text: '\$ $price',
              theme: context.textStyle.copyWith(
                fontSize: 13.sp,
                fontWeight: FontWeightHelper.medium,
              ),
            ),
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}
