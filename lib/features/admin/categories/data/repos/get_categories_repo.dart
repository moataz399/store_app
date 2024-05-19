import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/categories/data/data_source/get_categories_data_source.dart';
import 'package:store_app/features/admin/categories/data/models/add_category_request_body.dart';
import 'package:store_app/features/admin/categories/data/models/add_category_response.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/admin/categories/data/models/delete_category_response.dart';
import 'package:store_app/features/admin/categories/data/models/edit_category_request_body.dart';

class CategoriesRepo {
  final GetCategoriesDataSource _getCategoriesDataSource;

  CategoriesRepo(this._getCategoriesDataSource);

  Future<ApiResult<AdminCategoriesResponse>> getCategories() async {
    try {
      final result = await _getCategoriesDataSource.getCategories();
      return ApiResult.success(result);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<AddCategoryResponse>> createCategory({
    required AddCategoryRequestBody body,
  }) async {
    try {
      final result = await _getCategoriesDataSource.createCategory(body: body);
      return ApiResult.success(result);
    } catch (e) {
      print(e.toString());
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<DeleteCategoryResponse>> deleteCategory({
    required int id,
  }) async {
    try {
   final   response= await _getCategoriesDataSource.deleteCategory(id: id);

      return ApiResult.success(response);
    } catch (e) {
      print(e);
      return ApiResult.failure(e.toString());
    }
  }  Future<ApiResult<void>> editCategory({
    required EditCategoryRequestBody body ,
  }) async {
    try {
   final   response= await _getCategoriesDataSource.editCategory(body: body);

      return ApiResult.success(response);
    } catch (e) {
      print(e);
      return ApiResult.failure(e.toString());
    }
  }
}
