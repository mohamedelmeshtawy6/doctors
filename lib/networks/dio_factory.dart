



import 'package:dio/dio.dart';

abstract class DioFactory {


  static  Dio? dio ;

  static Dio createOrGetDioInstance() {
    Duration duration = const Duration(seconds: 30);
    if(dio == null) {
      dio = Dio()
      ..options.connectTimeout=duration
      ..options.receiveTimeout=duration
      ..options.headers['Accept']='application/json';
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