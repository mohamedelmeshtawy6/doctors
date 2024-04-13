import 'package:json_annotation/json_annotation.dart';
part 'signup_response_body.g.dart';
@JsonSerializable()
class SignUpResponsBody {
  final String ?message;
  @JsonKey(name: 'data')
  final DataInformation ?dataInformation;
  final String ?status;      
  final String ?code; 
  SignUpResponsBody({
     this.message,
     this.dataInformation,
     this.status,
     this.code
  });

  factory SignUpResponsBody.fromJson(Map<String, dynamic> json) => _$SignUpResponsBodyFromJson(json); 

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