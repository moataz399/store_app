import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_response.g.dart';
@JsonSerializable()
class RegisterResponse {
  RegisterResponse({this.data});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  final RegisterDataModel? data;
}

@JsonSerializable()
class RegisterDataModel {
  RegisterDataModel(this.addUser);

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataModelFromJson(json);

  final AddUserDataModel? addUser;
}

@JsonSerializable()
class AddUserDataModel {
  AddUserDataModel(this.id, this.email);


  factory AddUserDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddUserDataModelFromJson(json);

  final String? id;
  final String? email;
}
