import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_products_response.g.dart';

@JsonSerializable()
class ProductsResponse {
  ProductsResponse(this.data);

  factory ProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsResponseFromJson(json);

  AdminProductsData data;
}

@JsonSerializable()
class AdminProductsData {
  AdminProductsData(this.products);

  factory AdminProductsData.fromJson(Map<String, dynamic> json) =>
      _$AdminProductsDataFromJson(json);

  List<ProductsModel> products;
}

@JsonSerializable()
class ProductsModel {
  ProductsModel(
      {this.id, this.title, this.description, this.price, this.images,this.category});

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);

  final String? id;
  final String? title;
  final String? description;
  final double? price;
  final List<String>? images;
  final CategoryModel? category;
}

@JsonSerializable()
class CategoryModel {

  CategoryModel(this.name, this.id);
  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);

  final String? name;
  final String? id;
}
