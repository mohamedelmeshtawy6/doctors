abstract class ApiConstance {
  static const String baseUrl = 'https://vcare.integration25.com/api/';
  static const String login = 'auth/login';
  static const String register = 'auth/register';
}



 abstract class ResponseMessage {
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
abstract class ApiErrors {
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

abstract class ResponseCodeConstance   {
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorized = 401; // failure, user is not authorised
  static const int forbidden = 403; //  failure, API rejected request
  static const int internalServerError = 500; // failure, crash in server side
  static const int notFound = 404; // failure, not found
  static const int apiLogicalError = 422; // API , lOGIC ERROR

  // local status code
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int reciveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaultt = -7;
}
