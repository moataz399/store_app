// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_category_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditCategoryRequestBody _$EditCategoryRequestBodyFromJson(
        Map<String, dynamic> json) =>
    EditCategoryRequestBody(
      name: json['name'] as String,
      id: (json['id'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$EditCategoryRequestBodyToJson(
        EditCategoryRequestBody instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
    };
