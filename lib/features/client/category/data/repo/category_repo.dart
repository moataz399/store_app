import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/category/data/data_source/category_data_source.dart';

class CategoryRepo {
  CategoryRepo(this._dataSource);

  final CategoryDataSource _dataSource;

  Future<ApiResult<ProductsResponse>> getProductsByCategory(
      {required int categoryId,}) async {
    try {
      final response = await _dataSource.getProductsByCategory(categoryId: categoryId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
