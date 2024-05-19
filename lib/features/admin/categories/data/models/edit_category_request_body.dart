


import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_category_request_body.g.dart';
@JsonSerializable()
class EditCategoryRequestBody {
  EditCategoryRequestBody({
    required this.name,
    required this.id,
    required this.image,
  });

  final String name;
  final String image;
  final String id;


  Map<String,dynamic> toJson()=> _$EditCategoryRequestBodyToJson(this);


}