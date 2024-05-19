// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) =>
    RegisterResponse(
      data: json['data'] == null
          ? null
          : RegisterDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

RegisterDataModel _$RegisterDataModelFromJson(Map<String, dynamic> json) =>
    RegisterDataModel(
      json['addUser'] == null
          ? null
          : AddUserDataModel.fromJson(json['addUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterDataModelToJson(RegisterDataModel instance) =>
    <String, dynamic>{
      'addUser': instance.addUser,
    };

AddUserDataModel _$AddUserDataModelFromJson(Map<String, dynamic> json) =>
    AddUserDataModel(
      json['id'] as String?,
      json['email'] as String?,
    );

Map<String, dynamic> _$AddUserDataModelToJson(AddUserDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
    };
