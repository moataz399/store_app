


import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_request_body.g.dart';

@JsonSerializable()
class AddCategoryRequestBody {
  AddCategoryRequestBody(this.name,this.image,);

  factory AddCategoryRequestBody.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryRequestBodyFromJson(json);


     Map<String, dynamic> toJson() => _$AddCategoryRequestBodyToJson(this);
  final String? name;
  final String? image;

}
