// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminCategoriesResponseDashBoard _$AdminCategoriesResponseDashBoardFromJson(
        Map<String, dynamic> json) =>
    AdminCategoriesResponseDashBoard(
      json['data'] == null
          ? null
          : AdminCategoriesData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminCategoriesResponseDashBoardToJson(
        AdminCategoriesResponseDashBoard instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AdminCategoriesData _$AdminCategoriesDataFromJson(Map<String, dynamic> json) =>
    AdminCategoriesData(
      (json['categories'] as List<dynamic>?)
          ?.map((e) => AdminCategoriesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminCategoriesDataToJson(
        AdminCategoriesData instance) =>
    <String, dynamic>{
      'categories': instance.categories,
    };

AdminCategoriesModel _$AdminCategoriesModelFromJson(
        Map<String, dynamic> json) =>
    AdminCategoriesModel(
      json['name'] as String,
    );

Map<String, dynamic> _$AdminCategoriesModelToJson(
        AdminCategoriesModel instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
