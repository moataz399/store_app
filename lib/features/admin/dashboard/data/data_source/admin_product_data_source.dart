import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/admin_queries.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_categories_model.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_users_response.dart';
import 'package:store_app/features/admin/dashboard/data/models/product_admin_model.dart';

class AdminProductDataSource {
  const AdminProductDataSource(this.apiService);

  final ApiService apiService;

  Future<ProductsNumberResponse> getProductsNumber() async {
    final result =
        await apiService.getAdminProducts(AdminQueries().productsQuery());
    return result;
  }

  Future<AdminCategoriesResponseDashBoard> getCategoriesNumber() async {
    final result =
        await apiService.getCategoriesNumber(AdminQueries().categoriesNumberQuery());
    return result;
  }

  Future<AdminUsersResponse> getUsers() async {
    final result = await apiService.getUsersNumber(AdminQueries().usersQuery());
    return result;
  }
}
