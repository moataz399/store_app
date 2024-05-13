import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store_app/core/app/upload_image/upload_image_response.dart';
import 'package:store_app/core/services/graphql/api_service.dart';

class UploadImageDataSource {
  UploadImageDataSource(this.apiService);

  final ApiService apiService;

  Future<UploadImageResponse> uploadImage ({required XFile file}) async {
    final formData = FormData();

    formData.files.add(MapEntry('file', MultipartFile.fromFileSync(file.path)));

    final response = await apiService.uploadImage(formData);

    return response;
  }
}
