

import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/admin_queries.dart';
import 'package:store_app/features/admin/products/data/models/admin_products_response.dart';

import '../../../../admin/categories/data/models/admin_categories_response.dart';

class HomeDataSource{

  final ApiService apiService;

  HomeDataSource(this.apiService);




  Future<AdminCategoriesResponse> getAllCategories() async {
    final result =
    await apiService.getCategories(AdminQueries().categoriesQuery());
    return result;
  }

  Future<AdminProductsResponse> getAllProducts() async {
    final response = await apiService
        .getAllProducts(AdminQueries().allProducts());
    return response;
  }
}