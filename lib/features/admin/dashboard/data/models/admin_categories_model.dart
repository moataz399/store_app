import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_categories_model.g.dart';

@JsonSerializable()
class AdminCategoriesResponseDashBoard {
  AdminCategoriesResponseDashBoard(this.data);

  factory AdminCategoriesResponseDashBoard.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoriesResponseDashBoardFromJson(json);

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
  AdminCategoriesModel(this.name);

  factory AdminCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$AdminCategoriesModelFromJson(json);
  final String name;
}
