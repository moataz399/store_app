import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/auth/data/models/user_role_response.dart';
import 'package:store_app/features/client/profile/data/data_source/profile_data_source.dart';

class ProfileRepo {
  final ProfileDataSource profileDataSource;

  ProfileRepo( this.profileDataSource);

  Future<ApiResult<UserRoleResponse>> getUserProfileData() async {
    try {
      final response = await profileDataSource.getUserProfileData();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
