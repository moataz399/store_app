import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/home/data/data_source/home_data_source.dart';

class HomeRepo {
  final HomeDataSource dataSource;

  HomeRepo(this.dataSource);

  Future<ApiResult<AdminCategoriesResponse>> getCategories() async {
    try {
      final result = await dataSource.getAllCategories();
      return ApiResult.success(result);
    } catch (e) {
      print(e);
      return ApiResult.failure(e.toString());
    }
  }

  Future<ApiResult<ProductsResponse>> getAllProducts() async {
    try {
      final response = await dataSource.getAllProducts();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
