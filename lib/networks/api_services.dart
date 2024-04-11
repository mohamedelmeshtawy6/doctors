

import 'package:dio/dio.dart';
import 'package:doctors/features/login/data/model/login_request_body.dart';
import 'package:doctors/features/login/data/model/login_response_body.dart';
import 'package:doctors/networks/api_constance.dart';
import 'package:retrofit/http.dart';
part 'api_services.g.dart';
@RestApi(baseUrl: ApiConstance.baseUrl)
abstract class ApiServices{

  factory ApiServices(Dio dio,{
  String baseUrl,
}) =_ApiServices;

@POST(ApiConstance.login)
Future<LoginResposeBody> login(@Body() LoginRequestBody loginRequest);



}