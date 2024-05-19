import 'package:image_picker/image_picker.dart';
import 'package:store_app/core/app/upload_image/upload_image_data_source.dart';
import 'package:store_app/core/app/upload_image/upload_image_response.dart';
import 'package:store_app/core/services/graphql/api_result.dart';

class UploadImageRepo {
  UploadImageRepo(this._uploadImageDataSource);

  final UploadImageDataSource _uploadImageDataSource;

  Future<ApiResult<UploadImageResponse>> uploadImage(XFile file) async {
    try {
      final response = await _uploadImageDataSource.uploadImage(file: file);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure('Please try again later');
    }
  }
}
