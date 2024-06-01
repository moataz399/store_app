import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/products_queries.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';

class ViewAllProductsDataSource {
  ViewAllProductsDataSource(this.apiService);

  final ApiService apiService;

  Future<AdminProductsResponse> getViewAllProducts({
    required int offset,
  }) async {
    final response = await apiService.viewAllProducts(
      ProductsQueries().viewAllProductsQuery(offset: offset),
    );
    return response;
  }
}
