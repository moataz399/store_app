import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_response.g.dart';

@JsonSerializable()
class AddCategoryResponse {
  AddCategoryResponse(this.data);

  factory AddCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryResponseFromJson(json);

  final AddCategoriesData? data;
}

@JsonSerializable()
class AddCategoriesData {
  AddCategoriesData(this.addCategory);

  factory AddCategoriesData.fromJson(Map<String, dynamic> json) =>
      _$AddCategoriesDataFromJson(json);

  final AddCategoriesModel addCategory;
}

@JsonSerializable()
class AddCategoriesModel {
  AddCategoriesModel(this.name, this.image, this.id);

  factory AddCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$AddCategoriesModelFromJson(json);
  final String? name;
  final String? image;
  final String? id;
}
