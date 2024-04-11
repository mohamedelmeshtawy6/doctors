// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResposeBody _$LoginResposeBodyFromJson(Map<String, dynamic> json) =>
    LoginResposeBody(
      message: json['message'] as String?,
      dataInformation: json['data'] == null
          ? null
          : DataInformation.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$LoginResposeBodyToJson(LoginResposeBody instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.dataInformation,
      'status': instance.status,
      'code': instance.code,
    };

DataInformation _$DataInformationFromJson(Map<String, dynamic> json) =>
    DataInformation(
      token: json['token'] as String?,
      userName: json['username'] as String?,
    );

Map<String, dynamic> _$DataInformationToJson(DataInformation instance) =>
    <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
