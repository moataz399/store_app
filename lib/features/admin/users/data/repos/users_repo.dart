import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/admin/dashboard/data/models/admin_categories_model.dart';
import 'package:store_app/features/admin/users/data/data_source/users_data_source.dart';
import 'package:store_app/features/admin/users/data/models/get_all_users_response.dart';

class UsersRepo {

  UsersRepo(this.usersDataSource);
  final UsersDataSource usersDataSource;

  Future<ApiResult<GetAllUsersResponse>> getAllUsers() async {
    try {
      final result = await usersDataSource.getAllUsers();
      return ApiResult.success(result);
    } catch (e) {
      print(e);
      return ApiResult.failure(e.toString());
    }
  }Future<ApiResult<void>> deleteUser({required String  id }) async {
    try {
      final result = await usersDataSource.deleteUser(id: id);
      return ApiResult.success(result);
    } catch (e) {
      print(e);
      return ApiResult.failure(e.toString());
    }
  }
}
