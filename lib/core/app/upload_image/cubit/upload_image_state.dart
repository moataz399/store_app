part of 'upload_image_cubit.dart';

@freezed
class UploadImageState with _$UploadImageState {
  const factory UploadImageState.initial() = _Initial;

  const factory UploadImageState.loading() = Loading;
  const factory UploadImageState.loadingList(int index) = LoadingListState;
  const factory UploadImageState.success() = Success;

  const factory UploadImageState.error({required String error}) = Error;

  const factory UploadImageState.removeImage({required String imageUrl}) =
      RemoveImage;
}
