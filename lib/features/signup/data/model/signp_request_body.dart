

import 'package:json_annotation/json_annotation.dart';
part'signup_request_body.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  SignUpRequestBody({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.name,
    required this.gender,
    required this.phone,
  });
   
   final String email;
   final String password;
   @JsonKey(name: 'password_confirmation')
   final String confirmPassword;
   final String name;
   final String gender;
   final String phone;



   Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);

}