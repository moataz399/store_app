import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_body.g.dart';
@JsonSerializable()
class RegisterRequestBody {

  const RegisterRequestBody({
    required this.email,
    required this.password,
    required this.name,
    required this.avatar,
  });


  factory RegisterRequestBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestBodyFromJson(json);
  final String email;
  final String password;
  final String name;
  final String avatar;


}
