import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_users_response.g.dart';
@JsonSerializable()
class GetAllUsersResponse {
  GetAllUsersResponse(this.data);

  factory GetAllUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllUsersResponseFromJson(json);

  final UsersData data;
}

@JsonSerializable()
class UsersData {
  UsersData(this.users);

  factory UsersData.fromJson(Map<String, dynamic> json) =>
      _$UsersDataFromJson(json);
  final List<UserModel> users;
}

@JsonSerializable()
class UserModel {
  UserModel(
    this.id,
    this.name,
    this.email,
  );

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  final String? id;
  final String? name;
  final String? email;
}
