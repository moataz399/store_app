import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/style/colors/colors_dark.dart';
import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/style/fonts/font_family_helper.dart';
import 'package:store_app/core/widgets/app_text_form_field.dart';
import 'package:store_app/core/widgets/custom_button.dart';
import 'package:store_app/core/widgets/custom_drop_down.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/admin/categories/presentation/bloc/categories_bloc.dart';
import 'package:store_app/features/admin/products/data/models/update_product_request_body.dart';
import 'package:store_app/features/admin/products/presentation/bloc/update_bloc/update_product_bloc.dart';
import 'package:store_app/features/admin/products/presentation/widgets/update_product_images.dart';

class UpdateProductBottomSheet extends StatefulWidget {
  const UpdateProductBottomSheet({
    required this.imageList,
    required this.categoryName,
    required this.title,
    required this.price,
    required this.description,
    required this.productId,
    required this.categoryId,
    super.key,
  });

  final List<String> imageList;
  final String categoryName;
  final String title;
  final String price;
  final String description;
  final String productId;
  final String categoryId;

  @override
  State<UpdateProductBottomSheet> createState() =>
      _UpdateProductBottomSheetState();
}

class _UpdateProductBottomSheetState extends State<UpdateProductBottomSheet> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  final fromKey = GlobalKey<FormState>();

  String? categoryValueName;
  String? categoryValueId;

  @override
  void initState() {
    super.initState();

    categoryValueName = widget.categoryName;
    categoryValueId = widget.categoryId;
    _titleController.text = widget.title;
    _priceController.text = widget.price;
    _descriptionController.text = widget.description;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _priceController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600.h,
      child: Form(
        key: fromKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title Update Product
              Center(
                child: TextApp(
                  text: 'Update Product',
                  theme: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeightHelper.bold,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              TextApp(
                text: 'Update a photos',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              //Update Image Widget
              UpdateProductImages(
                imageList: widget.imageList,
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Title',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              // Title
              AppTextFormField(
                controller: _titleController,
                hintText: 'Title',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product Title';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Price',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              // Price
              AppTextFormField(
                controller: _priceController,
                hintText: 'Price',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Selected Your Product Price';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Description',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              //Description
              AppTextFormField(
                controller: _descriptionController,
                maxLines: 4,
                hintText: 'Description',
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 2) {
                    return 'Please Selected Your Product description';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15.h),
              TextApp(
                text: 'Category',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.medium,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
              SizedBox(height: 15.h),
              // Category Drop Doown
              BlocBuilder<CategoriesBloc, CategoriesState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (category) {
                      return CustomCreateDropDown(
                        hintText: '',
                        items: category.categoryDropdownList,
                        onChanged: (value) {
                          setState(() {
                            categoryValueName = value;

                            final categoryIdString = category.data.categories
                                .firstWhere((e) => e.name == value)
                                .id!;
                            categoryValueId = categoryIdString;
                          });
                        },
                        value: categoryValueName,
                      );
                    },
                    orElse: () {
                      return CustomCreateDropDown(
                        hintText: '',
                        items: const [''],
                        onChanged: (value) {},
                        value: '',
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 15.h),
              //Update Product Button
              BlocConsumer<UpdateProductBloc, UpdateProductState>(
                listener: (context, state) {
                  state.whenOrNull(
                    success: () {
                      context.pop();
                      ShowToast.showToastSuccessTop(
                        message: '${_titleController.text} Update Success',
                        seconds: 2,
                        context: context,
                      );
                    },
                    error: (error) {
                      ShowToast.showToastErrorTop(
                          message: error, context: context);
                    },
                  );
                },
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () {
                      return Container(
                        height: 50.h,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                          child: CircularProgressIndicator(
                            color: ColorsDark.blueDark,
                          ),
                        ),
                      );
                    },
                    orElse: () {
                      return CustomButton(
                        onPressed: () {
                          _validUpdateProduct(context);
                        },
                        backgroundColor: ColorsDark.white,
                        lastRadius: 20,
                        threeRadius: 20,
                        textColor: ColorsDark.blueDark,
                        text: 'Update Product',
                        width: MediaQuery.of(context).size.width,
                        height: 50.h,
                      );
                    },
                  );
                },
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }

  void _validUpdateProduct(BuildContext context) {
    print("walid => ${double.parse(categoryValueId!)}");
    if (fromKey.currentState!.validate()) {
      //update category

      context.read<UpdateProductBloc>().add(
            UpdateProductEvent.updateProduct(
              body: UpdateProductRequestBody(
                categoryId: double.parse(categoryValueId!),
                title: _titleController.text.trim(),
                description: _descriptionController.text.trim(),
                price: double.parse(_priceController.text.trim()),
                imageList:
                    context.read<UploadImageCubit>().imageUpdateList.isEmpty
                        ? widget.imageList
                        : context.read<UploadImageCubit>().imageUpdateList,
                productId: widget.productId,
              ),
            ),
          );
    }
  }
}
