import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_app/core/app/upload_image/upload_image_response.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';

import 'package:store_app/features/auth/data/models/user_role_response.dart';

part 'api_service.g.dart';

const String graphql = 'graphql';
const String baseURL = 'https://api.escuelajs.co/';
const String userRole = 'api/v1/auth/profile';
const String uploadImageUrl = 'api/v1/files/upload';

@RestApi(baseUrl: baseURL)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(graphql)
  Future<LoginResponse> login(@Body() Map<String, dynamic> mutation);

  @GET(userRole)
  Future<UserRoleResponse> getUserRole();
  
@POST(uploadImageUrl)
  Future<UploadImageResponse> uploadImage(@Body() FormData formData);
}
