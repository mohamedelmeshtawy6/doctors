

import 'package:doctors/features/signup/data/model/signp_request_body.dart';
import 'package:doctors/features/signup/data/model/signup_response_body.dart';
import 'package:doctors/networks/api_error_handler.dart';
import 'package:doctors/networks/api_result.dart';
import 'package:doctors/networks/api_services.dart';

class SignUpRepo{

final ApiServices _apiServices ;
SignUpRepo( this._apiServices);


Future <ApiResult<SignUpResponsBody>> register( SignUpRequestBody loginRequest) async{
  try{
    final responseBody = await _apiServices.register(loginRequest);
    return ApiResult.success( data: responseBody);
  }
  catch(e){
    return ApiResult.failure(ErrorHndler.handle(e));
  }


}



}