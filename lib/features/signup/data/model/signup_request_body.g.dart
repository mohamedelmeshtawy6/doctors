// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signp_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRequestBody _$SignUpRequestBodyFromJson(Map<String, dynamic> json) =>
    SignUpRequestBody(
      email: json['email'] as String,
      password: json['password'] as String,
      confirmPassword: json['password_confirmation'] as String,
      name: json['name'] as String,
      gender: json['gender'] as String,
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SignUpRequestBodyToJson(SignUpRequestBody instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'password_confirmation': instance.confirmPassword,
      'name': instance.name,
      'gender': instance.gender,
      'phone': instance.phone,
    };
