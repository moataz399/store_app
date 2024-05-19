import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/show_toast.dart';

class UpdateCategoryUploadImage extends StatelessWidget {
  const UpdateCategoryUploadImage({super.key, required this.imgUrl});

  final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccessTop(
              message: context.translate(LangKeys.imageUploaded),
              context: context,
            );
          },
          error: (errorMessage) {
            ShowToast.showToastErrorTop(
              message: errorMessage,
              context: context,
            );
          },
        );
      },
      builder: (context, state) {
        final cubit = context.read<UploadImageCubit>();
        return state.maybeWhen(loading: () {
          return Container(
            height: 120.h,
            width: MediaQuery.of(context).size.width / 2,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.8),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
          );
        }, orElse: () {
          return InkWell(
            onTap: cubit.uploadImage,
            child: Stack(
              children: [
                Container(
                  height: 120.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                        cubit.imageUrl.isEmpty
                            ? imgUrl
                            : cubit.imageUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                if (cubit.imageUrl.isEmpty)
                  Container(
                    height: 120.h,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.add_a_photo_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                  )
              ],
            ),
          );
        });
      },
    );
  }
}
