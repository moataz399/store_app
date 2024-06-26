import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_admin_model.g.dart';

@JsonSerializable()
class ProductsNumberResponse {
  ProductsNumberResponse(this.data);

  factory ProductsNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberResponseFromJson(json);

  final AdminProductsData? data;

  String get productsNumber {
    if (data!.products!.isEmpty) {
      return '0';
    }
    return data!.products!.length.toString();
  }
}

@JsonSerializable()
class AdminProductsData {
  AdminProductsData(this.products);

  factory AdminProductsData.fromJson(Map<String, dynamic> json) =>
      _$AdminProductsDataFromJson(json);

  final List<AdminProductsModel>? products;
}

@JsonSerializable()
class AdminProductsModel {
  AdminProductsModel(this.title);

  factory AdminProductsModel.fromJson(Map<String, dynamic> json) =>
      _$AdminProductsModelFromJson(json);
  final String title;
}
