import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/dashboard/data/data_source/admin_product_data_source.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_categories_model.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_users_response.dart';

import '../models/product_admin_model.dart';

class AdminDashBoardRepo {
  AdminDashBoardRepo(this.adminDataSource);

  final AdminProductDataSource adminDataSource;

  Future<ApiResult<ProductsNumberResponse>> getProducts() async {
    try {
      final result = await adminDataSource.getProductsNumber();
      return ApiResult.success(result);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<AdminCategoriesResponseDashBoard>> getCategoriesNumber() async {
    try {
      final result = await adminDataSource.getCategoriesNumber();
      return ApiResult.success(result);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<AdminUsersResponse>> getUsers() async {
    try {
      final result = await adminDataSource.getUsers();
      return ApiResult.success(result);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(e.toString());
    }
  }
}
