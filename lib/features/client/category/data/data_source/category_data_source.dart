import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/admin_queries.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';

class CategoryDataSource {
  CategoryDataSource(this.apiService);

  final ApiService apiService;

  Future<AdminProductsResponse> getProductsByCategory(
      {required int categoryId,}) async {
    final response = await apiService.productsByCategory(
        AdminQueries().getProductsByCategory(categoryId: categoryId));
    return response;
  }
}
