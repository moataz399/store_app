import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/show_toast.dart';

class CategoryUploadImage extends StatelessWidget {
  const CategoryUploadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          error: (errorMessage) {
            ShowToast.showToastErrorTop(
              context: context,
              message: errorMessage,
              seconds: 2,
            );
          },
          success: () {
            ShowToast.showToastSuccessTop(
              context: context,
              message: context.translate(LangKeys.imageUploaded),
              seconds: 2,
            );
          },
          removeImage: (removeImage) {
            ShowToast.showToastSuccessTop(
              context: context,
              message: context.translate(LangKeys.imageRemoved),
              seconds: 2,
            );
          },
        );
      },
      builder: (context, state) {
        var cubit = context.read<UploadImageCubit>();
        return state.maybeWhen(loading: () {
          return InkWell(
            onTap: () {
              context.read<UploadImageCubit>().uploadImage();
            },
            child: Container(
              height: 120.h,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                  child: CircularProgressIndicator(
                color: Colors.white,
              )),
            ),
          );
        }, orElse: () {
          if (cubit.imageUrl.isNotEmpty) {
            return InkWell(
              onTap: () {
                context.read<UploadImageCubit>().uploadImage();
              },
              child: Container(
                height: 120.h,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                    image:
                        DecorationImage(image: NetworkImage(cubit.imageUrl))),
              ),
            );
          } else {
            return InkWell(
              onTap: () {
                context.read<UploadImageCubit>().uploadImage();
              },
              child: Container(
                height: 120.h,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Icon(
                    Icons.add_a_photo,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            );
          }
        });
      },
    );
  }
}
