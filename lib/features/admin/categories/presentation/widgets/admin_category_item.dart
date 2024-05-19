import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/custom_admin_container.dart';
import 'package:store_app/core/widgets/custom_bottom_sheet.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/edit_category_bottom_sheet.dart';

import '../../../../../core/di/dependency_injection.dart';

class AdminCategoryItem extends StatelessWidget {
  const AdminCategoryItem(
      {required this.title,
      required this.imageUrl,
      required this.id,
      super.key});

  final String title;
  final String imageUrl;
  final String id;

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
                          whenComplete: (){

                            context.read<CategoriesBloc>().add(const CategoriesEvent.getCategories());
                          },
                          context: context,
                          widget: MultiBlocProvider(

                            providers: [
                              BlocProvider.value(
                                value: getIt<CategoriesBloc>(),
                              ),
                              BlocProvider(
                                  create: (context) =>
                                      getIt<UploadImageCubit>()),
                            ],
                            child: EditCategoryBottomSheetWidget(
                              name: title,
                              imgUrl: imageUrl,
                              id: id,
                            ),
                          ),
                        );
                      },
                      icon: const Icon(Icons.edit),
                      color: Colors.green,
                    ),
                    BlocConsumer<CategoriesBloc, CategoriesState>(
                      listener: (context, state) {
                        state.whenOrNull(
                          deletedSuccess: (data) {
                            ShowToast.showToastSuccessTop(
                              context: context,
                              message:
                                  context.translate('deleted Successfully'),
                            );
                            context.pop();
                            print(data.data.deleteCategory);
                          },
                          deletedError: (error) {
                            ShowToast.showToastErrorTop(
                              context: context,
                              message: error,
                            );
                          },
                        );
                      },
                      builder: (context, state) {
                        return IconButton(
                          onPressed: () {
                            context
                                .read<CategoriesBloc>()
                                .add(CategoriesEvent.deleteCategory(id: id));
                            print('========================${id}');
                          },
                          icon: const Icon(Icons.delete),
                          color: Colors.red,
                        );
                      },
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
