import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/admin_queries.dart';
import 'package:store_app/features/admin/categories/data/models/add_category_request_body.dart';
import 'package:store_app/features/admin/categories/data/models/add_category_response.dart';
import 'package:store_app/features/admin/categories/data/models/admin_categories_response.dart';
import 'package:store_app/features/admin/categories/data/models/delete_category_response.dart';
import 'package:store_app/features/admin/categories/data/models/edit_category_request_body.dart';

class GetCategoriesDataSource {
  final ApiService apiService;

  GetCategoriesDataSource(this.apiService);

  Future<AdminCategoriesResponse> getCategories() async {
    final result =
        await apiService.getCategories(AdminQueries().categoriesQuery());
    return result;
  }

  Future<DeleteCategoryResponse> deleteCategory({required int id}) async {
    return apiService
        .deleteCategory(AdminQueries().deleteCategoryQuery(id: id));
  }

  Future<AddCategoryResponse> createCategory(
      {required AddCategoryRequestBody body}) async {
    final result = await apiService
        .createCategory(AdminQueries().createCategoryQuery(body: body));
    return result;
  }

  Future<void> editCategory({required EditCategoryRequestBody body}) async {
    await apiService.editCategory(AdminQueries().editCategoryQuery(body: body));
  }
}
