import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/di/dependency_injection.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/core/widgets/custom_linear_button.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/categories/data/models/edit_category_request_body.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/categories/presentation/widgets/update_category_upload_image.dart';

import '../../../../../core/app/upload_image/cubit/upload_image_cubit.dart';

class EditCategoryBottomSheetWidget extends StatefulWidget {
  EditCategoryBottomSheetWidget(
      {required this.name, required this.imgUrl, super.key, required this.id});

  final String name;

  final String imgUrl;
  final String id;

  @override
  State<EditCategoryBottomSheetWidget> createState() =>
      _EditCategoryBottomSheetWidgetState();
}

class _EditCategoryBottomSheetWidgetState
    extends State<EditCategoryBottomSheetWidget> {
  TextEditingController nameController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    nameController.text = widget.name;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20.h),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: TextApp(
                text: 'Update Category',
                theme: context.textStyle.copyWith(
                  fontSize: 20.sp,
                  fontWeight: FontWeightHelper.bold,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextApp(
                  text: 'Update photo',
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.medium,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
              ],
            ),
            verticalSpace(10),
            UpdateCategoryUploadImage(
              imgUrl: widget.imgUrl,
            ),
            verticalSpace(10),
            TextApp(
              text: 'update category name',
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.medium,
                color: context.color.textColor,
              ),
            ),
            verticalSpace(10),
            AppTextFormField(
              controller: nameController,
              hintText: 'category name',
              validator: (value) {
                return null;
              },
            ),
            verticalSpace(20),
            BlocConsumer<AdminCategoriesBloc, CategoriesState>(
              builder: (context, state) {
                return state.maybeWhen(orElse: () {
                  return CustomButton(
                    onPressed: () {
                      _validUpdateCategory(context);
                    },
                    backgroundColor: ColorsDark.white,
                    lastRadius: 20,
                    threeRadius: 20,
                    textColor: ColorsDark.blueDark,
                    text: 'Update a new category',
                    width: MediaQuery.of(context).size.width,
                    height: 50.h,
                  );
                });
              },
              listener: (context, state) {
                state.whenOrNull(
                  editSuccess: () {
                    context.pop();
                    ShowToast.showToastSuccessTop(
                      context: context,
                      message: context.translate('Updated Successfully'),
                    );
                  },
                  editError: (message) {
                    ShowToast.showToastErrorTop(
                      context: context,
                      message: context.translate(message),
                    );
                  },
                );
              },
            ),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }

  void _validUpdateCategory(BuildContext context) {
    print(widget.id + "//=================*//////////////");
    if (formKey.currentState!.validate()) {
      context.read<AdminCategoriesBloc>().add(
            CategoriesEvent.editCategory(
              body: EditCategoryRequestBody(
                id: widget.id,
                image: context.read<UploadImageCubit>().imageUrl.isEmpty
                    ? widget.imgUrl
                    : context.read<UploadImageCubit>().imageUrl,
                name: nameController.text.trim(),
              ),
            ),
          );
    }
  }
}
