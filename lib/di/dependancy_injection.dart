
import 'package:dio/dio.dart';
import 'package:doctors/features/login/data/repo/login_repo.dart';
import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/networks/api_services.dart';
import 'package:doctors/networks/dio_factory.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;


Future <void> init() async {
  // dio&ApiServices
  Dio dio=DioFactory.create();
  getIt.registerLazySingleton<ApiServices>( ()=> ApiServices( dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo( getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
  
  

} 