import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:store_app/core/app/upload_image/upload_image_repo.dart';
import 'package:store_app/core/helpers/image_picker.dart';

part 'upload_image_state.dart';

part 'upload_image_cubit.freezed.dart';

class UploadImageCubit extends Cubit<UploadImageState> {
  UploadImageCubit(this.uploadImageRepo)
      : super(const UploadImageState.initial());

  final UploadImageRepo uploadImageRepo;

  String imageUrl = '';

  ///pick image and upload it to server
  Future<void> uploadImage() async {
    final file = await PickImageUtils().pickImage();

    if (file == null) {
      return;
    } else {
      emit(const UploadImageState.loading());
      final response = await uploadImageRepo.uploadImage(file);

      response.when(
        success: (image) {
          imageUrl = image.location ?? '';
          emit(const UploadImageState.success());
        },
        failure: (error) {
          emit(UploadImageState.error(error: error));
        },
      );
    }
  }

  void removeImage() {
    imageUrl = '';
    emit(UploadImageState.removeImage(imageUrl: imageUrl));
  }
}
