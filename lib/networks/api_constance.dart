class ApiConstance {
  static const String baseUrl = 'https://vcare.integration25.com/api/';
  static const String login = 'auth/login';
  static const String register = 'auth/register';
}

class ResponseCodeConstance   {
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
