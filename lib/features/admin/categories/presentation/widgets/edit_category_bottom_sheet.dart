import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/helpers/spacing.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/core/widgets/text_app.dart';

class EditCategoryBottomSheetWidget extends StatelessWidget {
  EditCategoryBottomSheetWidget({super.key});

  TextEditingController nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();

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

            // Edit a photo

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
                //Remove Image
                CustomButton(
                  onPressed: () {
                    //context.read<UploadImageCubit>().removeImage();
                  },
                  backgroundColor: Colors.red,
                  lastRadius: 10,
                  threeRadius: 10,
                  text: 'Remove',
                  width: 120.w,
                  height: 35.h,
                ),
              ],
            ),
            verticalSpace(10),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Container(
                  height: 120.h,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://img.freepik.com/premium-photo/laptop-front-view_426604-1004.jpg?w=1060',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.add_a_photo,
                      size: 30,
                      color: Colors.white,
                    ))
              ],
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
            CustomButton(
              onPressed: () {},
              lastRadius: 20,
              threeRadius: 20,
              backgroundColor: context.color.navBarbg,
              text: 'Update category',
              width: MediaQuery.of(context).size.width,
              height: 50.h,
            ),
            verticalSpace(10),
          ],
        ),
      ),
    );
  }
}
