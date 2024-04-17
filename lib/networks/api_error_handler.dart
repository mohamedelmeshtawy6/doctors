import 'package:dio/dio.dart';
import 'package:doctors/networks/api_constance.dart';

import 'api_error_model.dart';




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


class ResponseMessage {
  static const String noContent =
      ApiErrors.noContent; // success with no data (no content)
  static const String badRequest =
      ApiErrors.badRequestError; // failure, API rejected request
  static const String unauthorized =
      ApiErrors.unauthorizedError; // failure, user is not authorised
  static const String forbiddeb =
      ApiErrors.forbiddenError; //  failure, API rejected request
  static const String internalServerError =
      ApiErrors.internalServerError; // failure, crash in server side
  static const String notFound =
      ApiErrors.notFoundError; // failure, crash in server side

  // local status code
  static String connectTimeout = ApiErrors.timeoutError;
  static String cancel = ApiErrors.defaultError;
  static String recieveTimeout = ApiErrors.timeoutError;
  static String sendTimeout = ApiErrors.timeoutError;
  static String cacheError = ApiErrors.cacheError;
  static String noInternetConnection = ApiErrors.noInternetError;
  static String defaultt = ApiErrors.defaultError;
}
class ApiErrors {
static const String noContent = "No content";
static const String badRequestError = "Bad request error";
static const String forbiddenError = "Forbidden error";
static const String unauthorizedError = "Unauthorized error";
static const String notFoundError = "Not found error";
static const String internalServerError = "Internal server error";
static const String timeoutError = "Timeout error";
static const String noInternetError = "No internet error";
static const String cacheError = "Cache error";
static const String defaultError = "Unexpected error";



} 
extension DataSourceExtension on DataSource {
  ApiErrorModel getFailure() {
    switch (this) {

      case DataSource.apiLogicalError:
        return ApiErrorModel(
            code: ResponseCodeConstance.apiLogicalError, message: ResponseMessage.defaultt);
      case DataSource.noContent:
        return ApiErrorModel(
            code: ResponseCodeConstance.noContent, message: ResponseMessage.noContent);
      case DataSource.badRequest:
        return ApiErrorModel(
            code: ResponseCodeConstance.badRequest,
            message: ResponseMessage.badRequest);
      case DataSource.forbidden:
        return ApiErrorModel(
            code: ResponseCodeConstance.forbidden, message: ResponseMessage.forbiddeb);
      case DataSource.unauthorized:
        return ApiErrorModel(
            code: ResponseCodeConstance.unauthorized,
            message: ResponseMessage.unauthorized);
      case DataSource.notFound:
        return ApiErrorModel(
            code: ResponseCodeConstance.notFound, message: ResponseMessage.notFound);
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
            code: ResponseCodeConstance.cancel, message: ResponseMessage.cancel);
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
            code: ResponseCodeConstance.defaultt, message: ResponseMessage.defaultt);
    }
  }
}

class ErrorHndler implements Exception {
  late ApiErrorModel apiErrorModel;

  ErrorHndler.handle(dynamic error) {
    if (error is DioException) {
      // dio error so its an error from response of the API or from dio itself
      apiErrorModel = _handleError(error);
    } else {
      // default error
      apiErrorModel = DataSource.defaultt.getFailure();
    }
  }
}

ApiErrorModel _handleError(DioException error) {
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

/* class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
} */