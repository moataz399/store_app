import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:store_app/core/app/upload_image/upload_image_response.dart';
import 'package:store_app/features/admin/categories/data/models/add_category_response.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/admin/categories/data/models/delete_category_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_categories_model.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_users_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/product_admin_model.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/admin/users/data/models/get_all_users_response.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';
import 'package:store_app/features/auth/data/models/register_response.dart';
import 'package:store_app/features/auth/data/models/user_role_response.dart';
import 'package:store_app/features/client/product_details/data/models/product_details_response.dart';

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

  @POST(graphql)
  Future<RegisterResponse> register(@Body() Map<String, dynamic> mutation);

  @GET(userRole)
  Future<UserRoleResponse> getUserRole();

  @POST(uploadImageUrl)
  Future<UploadImageResponse> uploadImage(@Body() FormData formData);

  @POST(graphql)
  Future<ProductsNumberResponse> getAdminProducts(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<AdminUsersResponse> getUsersNumber(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<AdminCategoriesResponseDashBoard> getCategoriesNumber(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<AdminCategoriesResponse> getCategories(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<DeleteCategoryResponse> deleteCategory(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<AddCategoryResponse> createCategory(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<void> editCategory(
    @Body() Map<String, dynamic> mutation,
  );

  //products
  @POST(graphql)
  Future<ProductsResponse> getAllProducts(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<void> createProduct(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<void> deleteProduct(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<void> updateProduct(
    @Body() Map<String, dynamic> mutation,
  );

  ///users

  @POST(graphql)
  Future<GetAllUsersResponse> getAllUsers(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<void> deleteUser(
    @Body() Map<String, dynamic> mutation,
  );

  @POST(graphql)
  Future<ProductDetailsResponse> productDetails(
    @Body() Map<String, dynamic> query,
  );

  @POST(graphql)
  Future<ProductsResponse> productsByCategory(
    @Body() Map<String, dynamic> query,
  );

  @POST(graphql)
  Future<ProductsResponse> viewAllProducts(
    @Body() Map<String, dynamic> query,
  );@POST(graphql)
  Future<ProductsResponse> searchProducts(
    @Body() Map<String, dynamic> query,
  );
}
