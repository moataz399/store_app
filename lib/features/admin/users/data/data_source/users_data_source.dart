import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/admin_queries.dart';
import 'package:store_app/features/admin/users/data/models/get_all_users_response.dart';

class UsersDataSource {
  UsersDataSource(this.apiService);

  final ApiService apiService;

  Future<GetAllUsersResponse> getAllUsers() async {
    final result = await apiService.getAllUsers(AdminQueries().getUsersQuery());
    return result;
  }

  Future<void> deleteUser({required String  id}) async {
    await apiService.getAllUsers(AdminQueries().deleteUser(id: id));
  }
}
