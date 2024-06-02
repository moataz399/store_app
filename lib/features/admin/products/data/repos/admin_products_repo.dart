import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/products/data/data_source/products_data_source.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';
import 'package:store_app/features/admin/products/data/models/update_product_request_body.dart';

import '../models/create_product_request_body.dart';

class AdminProductsRepo {
  AdminProductsRepo(this.adminProductsDataSource);

  final AdminProductsDataSource adminProductsDataSource;

  Future<ApiResult<ProductsResponse>> getAllProducts() async {
    try {
      final response = await adminProductsDataSource.getAllProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(error.toString());
    }
  }

  // Create Products Admin
  Future<ApiResult<void>> createProductsAdmin({
    required CreateProductRequestBody body,
  }) async {
    try {
      final response =
          await adminProductsDataSource.createProductsAdmin(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  // Delete Products
  Future<ApiResult<void>> deleteProducts({
    required String productId,
  }) async {
    try {
      final response =
          await adminProductsDataSource.deleteProducts(productId: productId);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }

  // Update Products Admin
  Future<ApiResult<void>> updateProductsAdmin({
    required UpdateProductRequestBody body,
  }) async {
    try {
      final response =
          await adminProductsDataSource.updateProductsAdmin(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
