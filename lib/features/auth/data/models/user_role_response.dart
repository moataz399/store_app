import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_role_response.g.dart';

@JsonSerializable()
class UserRoleResponse {
  UserRoleResponse(
      this.userRole, this.userId, this.name, this.email, this.image);

  factory UserRoleResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRoleResponseFromJson(json);
  @JsonKey(name: 'role')
  final String? userRole;
  @JsonKey(name: 'id')
  final int? userId;
  final String? name;

  final String? email;

  @JsonKey(name: 'avatar')
  final String? image;
}
