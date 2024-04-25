import 'package:dio/dio.dart';
import 'package:doctors/networks/api_constance.dart';

import 'api_error_model.dart';

class ApiErrorHandler implements Exception {
  late ApiErrorModel apiErrorModel;

  ApiErrorHandler.handle(dynamic error) {
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




/* class ApiInternalStatus {
  static const int SUCCESS = 0;
  static const int FAILURE = 1;
} */