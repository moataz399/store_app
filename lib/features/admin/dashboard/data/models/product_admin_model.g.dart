// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminProductResponse _$AdminProductResponseFromJson(
        Map<String, dynamic> json) =>
    AdminProductResponse(
      json['data'] == null
          ? null
          : AdminProductsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminProductResponseToJson(
        AdminProductResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AdminProductsData _$AdminProductsDataFromJson(Map<String, dynamic> json) =>
    AdminProductsData(
      (json['products'] as List<dynamic>?)
          ?.map((e) => AdminProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminProductsDataToJson(AdminProductsData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

AdminProductsModel _$AdminProductsModelFromJson(Map<String, dynamic> json) =>
    AdminProductsModel(
      json['title'] as String,
    );

Map<String, dynamic> _$AdminProductsModelToJson(AdminProductsModel instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
