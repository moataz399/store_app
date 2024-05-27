import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/category_upload_image.dart';

class AddCategoryBottomSheetWidget extends StatelessWidget {
  const AddCategoryBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var bloc = context.read<AdminCategoriesBloc>();
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Form(
        key: context.read<AdminCategoriesBloc>().formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextApp(
                text: 'Create Category',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
            ),
            SizedBox(height: 20.h),

            // Add a photo

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextApp(
                  text: 'Add a photo',
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.medium,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
                //Remove Image

                BlocBuilder<UploadImageCubit, UploadImageState>(
                  builder: (context, state) {
                    if (context.read<UploadImageCubit>().imageUrl.isEmpty) {
                      return const SizedBox.shrink();
                    }
                    return CustomButton(
                      onPressed: () {
                        context.read<UploadImageCubit>().removeImage();
                      },
                      backgroundColor: Colors.red,
                      lastRadius: 10,
                      threeRadius: 10,
                      text: 'Remove',
                      width: 120.w,
                      height: 35.h,
                    );
                  },
                ),
              ],
            ),
            verticalSpace(10),
            const CategoryUploadImage(),
            verticalSpace(10),
            TextApp(
              text: 'Enter category name',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
                color: context.color.textColor,
              ),
            ),
            verticalSpace(10),

            AppTextFormField(
              controller: bloc.nameController,
              hintText: 'category name',
              validator: (value) {
                if (value == null || bloc.nameController.text.isEmpty) {
                  return context.translate(LangKeys.validName);
                }
                return null;
              },
            ),
            verticalSpace(20),
            BlocConsumer<AdminCategoriesBloc, CategoriesState>(
              listener: (context, state) {
                state.whenOrNull(addedError: (message) {
                  ShowToast.showToastErrorTop(
                      context: context, message: message);
                }, addedSuccess: (data) {
                  context.pop();
                  ShowToast.showToastSuccessTop(
                      context: context,
                      message:
                          '${bloc.nameController.text} added Successfully');
                });
              },
              builder: (context, state) {
                return CustomButton(
                  onPressed: () {
                    if (context.read<UploadImageCubit>().imageUrl.isEmpty) {
                      ShowToast.showToastErrorTop(
                        context: context,
                        message: 'Please add a photo',
                        seconds: 1,
                      );
                    }
                    if (bloc.formKey.currentState!.validate() &&
                        context.read<UploadImageCubit>().imageUrl.isNotEmpty) {
                      context.read<AdminCategoriesBloc>().add(
                            CategoriesEvent.addCategory(
                              imageUrl:
                                  context.read<UploadImageCubit>().imageUrl,
                            ),
                          );
                    }
                  },
                  lastRadius: 20,
                  threeRadius: 20,
                  backgroundColor: context.color.navBarbg,
                  text: 'Create new category',
                  width: MediaQuery.of(context).size.width,
                  height: 50.h,
                );
              },
            ),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
