import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/search/data/data_source/search_data_source.dart';
import 'package:store_app/features/client/search/data/models/search_request_body.dart';

class SearchRepo {
  SearchRepo(this._dataSource);

  final SearchDataSource _dataSource;

  Future<ApiResult<ProductsResponse>> searchProducts(
      {required SearchRequestBody body}) async {
    try {
      final response = await _dataSource.searchProducts(body: body);

      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
