import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:doctors/core/di/dependancy_injection.dart';
import 'package:doctors/core/helper/app_shared_variable.dart';
import 'package:doctors/core/helper/firebase.services.dart';
import 'package:doctors/core/helper/secure_storage.dart';
import 'package:doctors/features/login/data/model/company_model.dart';
import 'package:doctors/features/login/data/model/login_body_model.dart';
import 'package:doctors/core/networks/api_error_handler.dart';
import 'package:doctors/core/networks/api_result.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

class LoginRepo{


  final FirebaseServices firebaseServices ;

  LoginRepo( {required this.firebaseServices} );




Future <ApiResult<CompanyModel?>> cheeckIfOrganizationExists(
  {required String serverUrl} 
)async{

 try{
     final result=  await firebaseServices.fetchCompanyData(serverUrl: serverUrl);


  if( result == null )
  {
  
    return const ApiResult.success(data: null);
  } 
  else
  {
    
      return  ApiResult.success(data: result);
  }
 }

catch(e){
  
  return ApiResult.failure(
    ApiErrorHandler.handle(e) 
  );
}

}



 Future<ApiResult< List>> initializeOdooConnection(
      {required LoginBodyModel loginBodyModel}) async {
    try {
      OdooClient client = OdooClient(loginBodyModel.serverUrl);
      final session = await client.authenticate(
        loginBodyModel.databaseName,
        loginBodyModel.userName,
        loginBodyModel.password,
      );
      AppSharedVariable.odooClient = client;
      AppSharedVariable.odooSession = session;

      // save session data to secured storage
      getIt<SecureStorage>()
          .writeSecureData('session', jsonEncode(session.toJson()));

          log("session: ${AppSharedVariable.odooSession?.toString()}");
          log("client: ${AppSharedVariable.odooClient?.toString()}");
      return ApiResult.success(data:[client, session]);
    }  catch (error) {
    
      return ApiResult.failure(
       ApiErrorHandler.handle(error,writeError: "unknown error") 
    );}
  }




 
}