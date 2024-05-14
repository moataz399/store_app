// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_users_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminUsersResponse _$AdminUsersResponseFromJson(Map<String, dynamic> json) =>
    AdminUsersResponse(
      json['data'] == null
          ? null
          : AdminUsersData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminUsersResponseToJson(AdminUsersResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AdminUsersData _$AdminUsersDataFromJson(Map<String, dynamic> json) =>
    AdminUsersData(
      (json['users'] as List<dynamic>?)
          ?.map((e) => AdminUsersModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminUsersDataToJson(AdminUsersData instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

AdminUsersModel _$AdminUsersModelFromJson(Map<String, dynamic> json) =>
    AdminUsersModel(
      json['name'] as String,
    );

Map<String, dynamic> _$AdminUsersModelToJson(AdminUsersModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
