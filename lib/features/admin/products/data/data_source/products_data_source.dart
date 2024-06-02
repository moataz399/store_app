import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/admin_queries.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/admin/products/data/models/create_product_request_body.dart';
import 'package:store_app/features/admin/products/data/models/update_product_request_body.dart';

class AdminProductsDataSource {

  AdminProductsDataSource(this.apiService);
  final ApiService apiService;

  Future<ProductsResponse> getAllProducts() async {
    final response =
        await apiService.getAllProducts(AdminQueries().allProducts());
    return response;
  }
  // Create products admin
  Future<void> createProductsAdmin({
    required CreateProductRequestBody body,
  }) async {
    final response = await apiService
        .createProduct(AdminQueries().createProductMap(body: body));
    return response;
  }

  // delete products
  Future<void> deleteProducts({
    required String productId,
  }) async {
    final response = await apiService
        .deleteProduct(AdminQueries().deleteMapQuery(productId: productId));
    return response;
  }

  // Update products admin
  Future<void> updateProductsAdmin({
    required UpdateProductRequestBody body,
  }) async {
    final response = await apiService
        .updateProduct(AdminQueries().updateProductMap(body: body));
    return response;
  }
}
