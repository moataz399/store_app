import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/widgets/show_toast.dart';

class UserAvatarImage extends StatelessWidget {
  const UserAvatarImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 500,
      child: BlocConsumer<UploadImageCubit, UploadImageState>(
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
          final isImageUploaded =
              context.read<UploadImageCubit>().imageUrl.isNotEmpty;

          return state.maybeWhen(
            orElse: () {
              return CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.1),
                radius: 38.r,
                backgroundImage: isImageUploaded
                    ? NetworkImage(context.read<UploadImageCubit>().imageUrl)
                        as ImageProvider
                    : const AssetImage('assets/images/customer/user.png'),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      height: 100.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isImageUploaded
                            ? Colors.transparent
                            : Colors.black.withOpacity(.04),
                      ),
                    ),
                    if (isImageUploaded) Positioned(
                            top: -15,
                            right: -15,
                            child: IconButton(
                              onPressed: () {
                                context.read<UploadImageCubit>().removeImage();
                              },
                              icon: const Icon(
                                Icons.delete,
                              ),
                              color: Colors.red,
                            ),
                          ) else const SizedBox.shrink(),
                    if (isImageUploaded) const SizedBox.shrink() else IconButton(
                            onPressed: () {
                              context.read<UploadImageCubit>().uploadImage();
                            },
                            icon: const Icon(Icons.add_a_photo),
                            color: Colors.white,
                          ),
                  ],
                ),
              );
            },
            loading: () {
              return CircleAvatar(
                radius: 38,
                backgroundImage:
                    const AssetImage('assets/images/customer/user.png'),
                child: CircularProgressIndicator(
                  color: context.color.mainColor,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
