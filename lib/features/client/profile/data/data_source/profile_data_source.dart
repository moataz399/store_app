import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/features/auth/data/models/user_role_response.dart';

class ProfileDataSource {
  ProfileDataSource(this.apiService);

  final ApiService apiService;

  Future<UserRoleResponse> getUserProfileData() async {
    final response = await apiService.getUserRole();
    return response;
  }
}
