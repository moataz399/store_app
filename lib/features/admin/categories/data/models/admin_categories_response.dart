import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_categories_response.g.dart';

@JsonSerializable()
class AdminCategoriesResponse {
  AdminCategoriesResponse(this.data);

  factory AdminCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoriesResponseFromJson(json);

  final AdminCategoriesData? data;

  String get categoriesNumber {
    if (data!.categories!.isEmpty) {
      return '0';
    }
    return data!.categories!.length.toString();
  }
}

@JsonSerializable()
class AdminCategoriesData {
  AdminCategoriesData(this.categories);

  factory AdminCategoriesData.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoriesDataFromJson(json);

  final List<AdminCategoriesModel>? categories;
}

@JsonSerializable()
class AdminCategoriesModel {
  AdminCategoriesModel(this.name,this.image, this.id);

  factory AdminCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoriesModelFromJson(json);
  final String? name;
  final String? image;
  final String? id;
}
