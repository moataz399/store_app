import 'package:store_app/core/language/lang_keys.dart';
import 'package:store_app/core/services/graphql/api_result.dart';
import 'package:store_app/features/auth/data/data_source/auth_data_source.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';
import 'package:store_app/features/auth/data/models/user_role_response.dart';

class AuthRepo {
  AuthRepo(this.authDataSource);

  final AuthDataSource authDataSource;

  Future<ApiResult<LoginResponse>> login({
    required LoginRequestBody body,
  }) async {
    try {
      final response = await authDataSource.login(body: body);
      return ApiResult.success(response);
    } catch (error) {
      return const ApiResult.failure(
        LangKeys.loggedError,
      );
    }
  }

  Future<UserRoleResponse> getUserRole(String token) async {
    final response = await authDataSource.getUserRole(token);
    return response;
  }
}
