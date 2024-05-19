import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_users_response.g.dart';

@JsonSerializable()
class AdminUsersResponse {
  AdminUsersResponse(this.data);

  factory AdminUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminUsersResponseFromJson(json);

  final AdminUsersData? data;

  String get usersNumber {
    if (data!.users!.isEmpty) {
      return '0';
    }
    return data!.users!.length.toString();
  }
}

@JsonSerializable()
class AdminUsersData {
  AdminUsersData(this.users);

  factory AdminUsersData.fromJson(Map<String, dynamic> json) =>
      _$AdminUsersDataFromJson(json);

  final List<AdminUsersModel>? users;
}

@JsonSerializable()
class AdminUsersModel {
  AdminUsersModel(this.name);

  factory AdminUsersModel.fromJson(Map<String, dynamic> json) =>
      _$AdminUsersModelFromJson(json);
  final String name;
}
