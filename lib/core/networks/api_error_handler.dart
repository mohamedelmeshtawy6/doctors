

import 'dart:developer';

//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:doctors/core/networks/api_constance.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:odoo_rpc/odoo_rpc.dart';

import 'api_error_model.dart';

class ApiErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ApiErrorHandler.handle(dynamic error, {String? writeError}) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      apiErrorModel = _handleApi(error);
    } else if (error is OdooException || error is OdooSessionExpiredException) {
      apiErrorModel = _handleOdoo(error);
    } else if (error is FirebaseException) {
      apiErrorModel = _handleFirebase(error);
    } else {
      // default error
      apiErrorModel = _handleWithMessage(error);
    }
  }

  
}



ApiErrorModel _handleApi(DioException error) {
   log('Api error');
  switch (error.type) {
    case DioExceptionType.connectionTimeout:
      return DataSource.connectTimeout.getFailure();
    case DioExceptionType.sendTimeout:
      return DataSource.sendTimeout.getFailure();
    case DioExceptionType.receiveTimeout:
      return DataSource.reciveTimeout.getFailure();
    case DioExceptionType.badResponse:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.defaultt.getFailure();
      }
    case DioExceptionType.unknown:
      if (error.response != null &&
          error.response?.statusCode != null &&
          error.response?.statusMessage != null) {
        return ApiErrorModel.fromJson(error.response!.data);
      } else {
        return DataSource.defaultt.getFailure();
      }
    case DioExceptionType.cancel:
      return DataSource.cancel.getFailure();
    case DioExceptionType.connectionError:
      return DataSource.defaultt.getFailure();
    case DioExceptionType.badCertificate:
      return DataSource.defaultt.getFailure();
  }
}

enum DataSource {
  noContent,
  badRequest,
  unauthorized,
  forbidden,
  internalServerError,
  notFound,
  apiLogicalError,
  connectTimeout,
  cancel,
  reciveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaultt
}

extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {
      case DataSource.apiLogicalError:
        return ApiErrorModel(
            code: ResponseCodeConstance.apiLogicalError,
            message: ResponseMessage.defaultt);
      case DataSource.noContent:
        return ApiErrorModel(
            code: ResponseCodeConstance.noContent,
            message: ResponseMessage.noContent);
      case DataSource.badRequest:
        return ApiErrorModel(
            code: ResponseCodeConstance.badRequest,
            message: ResponseMessage.badRequest);
      case DataSource.forbidden:
        return ApiErrorModel(
            code: ResponseCodeConstance.forbidden,
            message: ResponseMessage.forbiddeb);
      case DataSource.unauthorized:
        return ApiErrorModel(
            code: ResponseCodeConstance.unauthorized,
            message: ResponseMessage.unauthorized);
      case DataSource.notFound:
        return ApiErrorModel(
            code: ResponseCodeConstance.notFound,
            message: ResponseMessage.notFound);
      case DataSource.internalServerError:
        return ApiErrorModel(
            code: ResponseCodeConstance.internalServerError,
            message: ResponseMessage.internalServerError);
      case DataSource.connectTimeout:
        return ApiErrorModel(
            code: ResponseCodeConstance.connectTimeout,
            message: ResponseMessage.connectTimeout);
      case DataSource.cancel:
        return ApiErrorModel(
            code: ResponseCodeConstance.cancel,
            message: ResponseMessage.cancel);
      case DataSource.reciveTimeout:
        return ApiErrorModel(
            code: ResponseCodeConstance.reciveTimeout,
            message: ResponseMessage.recieveTimeout);
      case DataSource.sendTimeout:
        return ApiErrorModel(
            code: ResponseCodeConstance.sendTimeout,
            message: ResponseMessage.sendTimeout);
      case DataSource.cacheError:
        return ApiErrorModel(
            code: ResponseCodeConstance.cacheError,
            message: ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return ApiErrorModel(
            code: ResponseCodeConstance.noInternetConnection,
            message: ResponseMessage.noInternetConnection);
      case DataSource.defaultt:
        return ApiErrorModel(
            code: ResponseCodeConstance.defaultt,
            message: ResponseMessage.defaultt);
    }
  }
}




ApiErrorModel _handleOdoo(Exception e) {
  if (e is OdooException) {
    log('odoo error');
    return ApiErrorModel(
        code: ResponseCodeConstance.odoounknown, message: e.message);
  } else {
    return ApiErrorModel(
        code: ResponseCodeConstance.seasionExpired,
        message: ResponseMessage.sessionExpired);
  }
}


ApiErrorModel _handleFirebase(FirebaseException e) {
   log('firebase error');
  return ApiErrorModel(
      code: ResponseCodeConstance.odoounknown, message: e.message!);
}
ApiErrorModel _handleWithMessage( Exception e) {
  log('other error');
  return ApiErrorModel(
      code: ResponseCodeConstance.odoounknown, 
      message: e.toString());
}
  





/* class OdooServerFailure extends Failure {
  final OdooException odooException;
  OdooServerFailure({required super.errorMessage, required this.odooException});

  factory OdooServerFailure.fromOdooError(OdooException odooException) {
    if (odooException is OdooSessionExpiredException) {
      return OdooServerFailure(
        errorMessage: "session expired, please login again",
        odooException: odooException,
      );
    } else {
      return OdooServerFailure(
        odooException: odooException,
        errorMessage: odooException.message,
      );
    }
  }
}

class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});

  factory Failure.type({required error}) {
 if (error is IsarError) {
      return CasheFailure(errorMessage: error.message.toString());
    } else if (error is OdooException) {
      return OdooServerFailure.fromOdooError(error);
    } else {
      return Failure(errorMessage: error.toString());
    }
  }
}



class CasheFailure extends Failure {
  CasheFailure({required super.errorMessage});
} */