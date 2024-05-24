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
  List<String> imageList = ['', '', ''];
  List<String> imageUpdateList = [];

  ///pick image and upload it to server
  Future<void> uploadImage() async {
    imageUrl = '';
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

// pick image and save it in file and upload it to server with List
  Future<void> uploadImageList({required int indexId}) async {
    final pickedImage = await PickImageUtils().pickImage();
    if (pickedImage == null) return;

    emit(UploadImageState.loadingList(indexId));
    final result = await uploadImageRepo.uploadImage(pickedImage);

    result.when(
      success: (image) {
        imageList
          ..removeAt(indexId)
          ..insert(indexId, image.location ?? '');
        emit(const UploadImageState.success());
      },
      failure: (error) {
        emit(UploadImageState.error(error: error));
      },
    );
  }

// Upload update image list
  Future<void> uploadUpdateImageList({
    required int indexId,
    required List<String> productImageList,
  }) async {
    final pickedImage = await PickImageUtils().pickImage();
    if (pickedImage == null) return;

    emit(UploadImageState.loadingList(indexId));
    final result = await uploadImageRepo.uploadImage(pickedImage);
    print('Uploaded and replaced');
    result.when(
      success: (image) {
        imageUpdateList = productImageList;
        imageUpdateList
          ..removeAt(indexId)
          ..insert(indexId, image.location ?? '');
        emit(const UploadImageState.success());
      },
      failure: (error) {
        emit(UploadImageState.error(error: error));
      },
    );
  }

  // remove image

  void removeImage() {
    imageUrl = '';
    emit(UploadImageState.removeImage(imageUrl: imageUrl));
  }
}
