
import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/admin_queries.dart';
import 'package:store_app/features/client/product_details/data/models/product_details_response.dart';

class ProductDetailsDataSource {
  const ProductDetailsDataSource(this.apiService);

  final ApiService apiService;

  // Product Details
  Future<ProductDetailsResponse> productDetails({required int id}) async {
    final response = await apiService.productDetails(
        AdminQueries().getProductDetailsMapQuery(id: id));
    return response;
  }
}