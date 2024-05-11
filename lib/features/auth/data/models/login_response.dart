import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
part'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  LoginResponse({required this.data});

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  final LoginDataModel? data;
}

@JsonSerializable()
class LoginDataModel {
  LoginDataModel({required this.login});

  factory LoginDataModel.fromJson(Map<String, dynamic> json) =>
      _$LoginDataModelFromJson(json);

  LoginModel? login;
}

@JsonSerializable()
class LoginModel {
  LoginModel({required this.accessToken, required this.refreshToken});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);

  @JsonKey(name: 'access_token')
  final String? accessToken;
  @JsonKey(name: 'refresh_token')
  final String? refreshToken;
}
