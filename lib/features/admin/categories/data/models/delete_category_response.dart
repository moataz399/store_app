import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_category_response.g.dart';
@JsonSerializable()
class DeleteCategoryResponse {

  factory DeleteCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryResponseFromJson(json);

  DeleteCategoryResponse(this.data);
 final  DeleteCategoryModel data;
}

@JsonSerializable()
class DeleteCategoryModel {

  DeleteCategoryModel(this.deleteCategory);
  factory DeleteCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteCategoryModelFromJson(json);
  final bool deleteCategory;
}
