// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCategoryResponse _$AddCategoryResponseFromJson(Map<String, dynamic> json) =>
    AddCategoryResponse(
      json['data'] == null
          ? null
          : AddCategoriesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCategoryResponseToJson(
        AddCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AddCategoriesData _$AddCategoriesDataFromJson(Map<String, dynamic> json) =>
    AddCategoriesData(
      AddCategoriesModel.fromJson(json['addCategory'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCategoriesDataToJson(AddCategoriesData instance) =>
    <String, dynamic>{
      'addCategory': instance.addCategory,
    };

AddCategoriesModel _$AddCategoriesModelFromJson(Map<String, dynamic> json) =>
    AddCategoriesModel(
      json['name'] as String?,
      json['image'] as String?,
      json['id'] as String?,
    );

Map<String, dynamic> _$AddCategoriesModelToJson(AddCategoriesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'image': instance.image,
      'id': instance.id,
    };
