import '../../../../../core/services/graphql/api_result.dart';
import '../data_source/product_details_data_source.dart';
import '../models/product_details_response.dart';

class ProductDetailsRepo {
  ProductDetailsRepo(this._dataSource);

  final ProductDetailsDataSource _dataSource;

  Future<ApiResult<ProductDetailsResponse>> getProductDetails(
      {required int id}) async {
    try {
      final response = await _dataSource.productDetails(id: id);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
