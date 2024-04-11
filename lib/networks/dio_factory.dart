


import 'package:dio/dio.dart';

class DioFactory {

  DioFactory._();

  static  Dio? dio ;
  static Dio create() {
    Duration duration = const Duration(seconds: 30);
    if(dio == null) {
      dio = Dio()
      ..options.connectTimeout=duration
      ..options.receiveTimeout=duration;
      dio?.interceptors.add(LogInterceptor(
        request: true,
        error: true,
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true));
        return dio!;
    }
    else{
      return dio!;
    }
  }
}