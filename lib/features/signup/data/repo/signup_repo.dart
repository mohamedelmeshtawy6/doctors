

import 'package:doctors/features/signup/data/model/signup_request_model.dart';
import 'package:doctors/features/signup/data/model/signup_response_model.dart';
import 'package:doctors/networks/api_error_handler.dart';
import 'package:doctors/networks/api_result.dart';
import 'package:doctors/networks/api_services.dart';

class SignUpRepo{

final ApiServices _apiServices ;
SignUpRepo( this._apiServices);


Future <ApiResult<SignUpResponsModel>> register( SignUpRequestModel loginRequest) async{
  try{
    final responseBody = await _apiServices.register(loginRequest);
    return ApiResult.success( data: responseBody);
  }
  catch(e){
    return ApiResult.failure(ApiErrorHandler.handle(e));
  }


}



}