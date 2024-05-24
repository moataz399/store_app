// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminProductsResponse _$AdminProductsResponseFromJson(
        Map<String, dynamic> json) =>
    AdminProductsResponse(
      AdminProductsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminProductsResponseToJson(
        AdminProductsResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AdminProductsData _$AdminProductsDataFromJson(Map<String, dynamic> json) =>
    AdminProductsData(
      (json['products'] as List<dynamic>)
          .map((e) => AdminProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdminProductsDataToJson(AdminProductsData instance) =>
    <String, dynamic>{
      'products': instance.products,
    };

AdminProductsModel _$AdminProductsModelFromJson(Map<String, dynamic> json) =>
    AdminProductsModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      category: json['category'] == null
          ? null
          : CategoryModel.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdminProductsModelToJson(AdminProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'images': instance.images,
      'category': instance.category,
    };

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      json['name'] as String?,
      json['id'] as String?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
    };
