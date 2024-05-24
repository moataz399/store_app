import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:store_app/core/animations/animate_do.dart';
import 'package:store_app/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:store_app/core/helpers/extensions.dart';
import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/routing/routes.dart';

import 'package:store_app/core/style/fonts/Font_weight_helper.dart';
import 'package:store_app/core/widgets/custom_linear_button.dart';
import 'package:store_app/core/widgets/show_toast.dart';
import 'package:store_app/core/widgets/text_app.dart';
import 'package:store_app/features/auth/presentation/bloc/auth_bloc.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AuthBloc>();
    final uploadImageCubit = context.read<UploadImageCubit>();
    return CustomFadeInRight(
      duration: 400,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.whenOrNull(
            success: (_) {
              ShowToast.showToastSuccessTop(
                context: context,
                message: context.translate(LangKeys.loggedSuccessfully),
              );
              context.pushNamedAndRemoveUntil(
                Routes.mainScreen,
              );
            },
            error: (message) {
              ShowToast.showToastErrorTop(
                context: context,
                message: message,
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            loading: () {
              return CustomLinearButton(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                onPressed: () {},
                child: const CircularProgressIndicator(
                  color: Colors.white,
                ),
              );
            },
            orElse: () {
              return CustomLinearButton(
                width: MediaQuery.of(context).size.width,
                height: 50.h,
                onPressed: () {
                  if (!bloc.formKey.currentState!.validate() ||
                      uploadImageCubit.imageUrl.isEmpty) {
                    if (uploadImageCubit.imageUrl.isEmpty) {
                      ShowToast.showToastErrorTop(
                        context: context,
                        message: context.translate(LangKeys.validPickImage),
                      );

                    }
                  }
                  else {
                    bloc.add(
                      AuthEvent.register(
                        imageUrl: uploadImageCubit.imageUrl,
                      ),
                    );
                  }
                },
                child: TextApp(
                  text: context.translate(LangKeys.signUp),
                  theme: context.textStyle.copyWith(
                    fontSize: 18.sp,
                    fontWeight: FontWeightHelper.bold,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
