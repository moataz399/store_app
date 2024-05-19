// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteCategoryResponse _$DeleteCategoryResponseFromJson(
        Map<String, dynamic> json) =>
    DeleteCategoryResponse(
      DeleteCategoryModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeleteCategoryResponseToJson(
        DeleteCategoryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

DeleteCategoryModel _$DeleteCategoryModelFromJson(Map<String, dynamic> json) =>
    DeleteCategoryModel(
      json['deleteCategory'] as bool,
    );

Map<String, dynamic> _$DeleteCategoryModelToJson(
        DeleteCategoryModel instance) =>
    <String, dynamic>{
      'deleteCategory': instance.deleteCategory,
    };
