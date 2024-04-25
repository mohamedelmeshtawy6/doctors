

import 'package:dio/dio.dart';
import 'package:doctors/features/login/data/model/login_request_model.dart';
import 'package:doctors/features/login/data/model/login_response_model.dart';
import 'package:doctors/features/signup/data/model/signup_request_model.dart';
import 'package:doctors/features/signup/data/model/signup_response_model.dart';
import 'package:doctors/networks/api_constance.dart';
import 'package:retrofit/http.dart';
part'api_services.g.dart';
@RestApi(baseUrl: ApiConstance.baseUrl)
abstract class ApiServices{

  factory ApiServices(Dio dio,{
  String baseUrl,
}) =_ApiServices;


@POST(ApiConstance.login)
Future<LoginResposeModel> login(@Body() LoginRequestModel loginRequest);


@POST(ApiConstance.register)
Future<SignUpResponsModel> register(@Body() SignUpRequestModel signUpRequest);
     


}