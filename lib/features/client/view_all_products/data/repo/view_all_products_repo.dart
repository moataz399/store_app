import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/view_all_products/data/data_source/view_all_data_source.dart';

class ViewAllProductsRepo {
  ViewAllProductsRepo(this.dataSource);

  final ViewAllProductsDataSource dataSource;

  Future<ApiResult<AdminProductsResponse>> getAllProducts(
      {required int offset}) async {
    try {
      final response = await dataSource.getViewAllProducts(offset: offset);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
