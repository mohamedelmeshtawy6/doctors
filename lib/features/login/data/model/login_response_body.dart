

import 'package:json_annotation/json_annotation.dart';
part 'login_response_body.g.dart';
@JsonSerializable()
class LoginResposeBody {
  final String ?message;
  @JsonKey(name: 'data')
  final DataInformation ?dataInformation;
  final String ?status;      
  final String ?code; 
  LoginResposeBody({
     this.message,
     this.dataInformation,
     this.status,
     this.code
  });

  factory LoginResposeBody.fromJson(Map<String, dynamic> json) => _$LoginResposeBodyFromJson(json); 

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