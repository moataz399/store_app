import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:store_app/core/services/graphql/api_service.dart';
import 'package:store_app/core/services/graphql_queries/auth_queries.dart';
import 'package:store_app/features/auth/data/models/login_request_body.dart';
import 'package:store_app/features/auth/data/models/login_response.dart';
import 'package:store_app/features/auth/data/models/register_request_body.dart';
import 'package:store_app/features/auth/data/models/register_response.dart';
import 'package:store_app/features/auth/data/models/user_role_response.dart';

class AuthDataSource {
  AuthDataSource(this.apiService);

  final ApiService apiService;

  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final response =
        await apiService.login(AuthQueries().loginQuery(body: body));
    return response;
  }

  Future<RegisterResponse> register({required RegisterRequestBody body}) async {
    final response =
        await apiService.register(AuthQueries().registerQuery(body: body));
    return response;
  }

  Future<UserRoleResponse> getUserRole(String token) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiService(dio);
    final response = await client.getUserRole();
    debugPrint('User Role => ${response.userRole}');

    return response;
  }
}
