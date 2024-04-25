import 'package:doctors/features/login/data/model/login_request_model.dart';
import 'package:doctors/features/login/data/model/login_response_model.dart';
import 'package:doctors/networks/api_error_handler.dart';
import 'package:doctors/networks/api_result.dart';
import 'package:doctors/networks/api_services.dart';

class LoginRepo{


  final ApiServices _apiServices;

  LoginRepo( this._apiServices);

Future <ApiResult<LoginResposeModel>> login( LoginRequestModel loginRequest) async{
   
  try{

    final responseBody = await _apiServices.login(loginRequest);
    return ApiResult.success( data:responseBody);

  } 

  catch(e){
    
    return ApiResult.failure(ApiErrorHandler.handle(e));
  }
  
  
  }
 
}