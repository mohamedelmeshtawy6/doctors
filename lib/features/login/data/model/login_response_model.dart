

import 'package:json_annotation/json_annotation.dart';
part 'login_response_model.g.dart';
@JsonSerializable()
class LoginResposeModel {
  final String ?message;
  @JsonKey(name: 'data')
  final DataInformation ?dataInformation;
  final String ?status;      
  final String ?code; 
  LoginResposeModel({
     this.message,
     this.dataInformation,
     this.status,
     this.code
  });

  factory LoginResposeModel.fromJson(Map<String, dynamic> json) => _$LoginResposeModelFromJson(json); 

}

@JsonSerializable()
class DataInformation{
final String? token;
@JsonKey(name: 'username')
final String? userName;
DataInformation({
  this.token,
  this.userName, 
});
factory DataInformation.fromJson(Map<String, dynamic> json) => _$DataInformationFromJson(json);


}