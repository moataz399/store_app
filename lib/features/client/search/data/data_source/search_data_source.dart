import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/search_query.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/client/search/data/models/search_request_body.dart';

class SearchDataSource {

  SearchDataSource(this.apiService);
  final ApiService apiService;

  Future<ProductsResponse> searchProducts(
      {required SearchRequestBody body}) async {
    final response = await apiService
        .searchProducts(SearchQuery().searchProduct(body: body));
    return response;
  }
}
