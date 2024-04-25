import 'package:json_annotation/json_annotation.dart';
part 'signup_response_model.g.dart';

@JsonSerializable()
class SignUpResponsModel {
  final String? message;
  @JsonKey(name: 'data')
  final DataInformation? dataInformation;
  final String? status;
  final String? code;
  SignUpResponsModel(
      {this.message, this.dataInformation, this.status, this.code});

  factory SignUpResponsModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpResponsModelFromJson(json);
}

@JsonSerializable()
class DataInformation {
  final String? token;
  @JsonKey(name: 'username')
  final String? userName;
  DataInformation({
    this.token,
    this.userName,
  });
  factory DataInformation.fromJson(Map<String, dynamic> json) =>
      _$DataInformationFromJson(json);
}
