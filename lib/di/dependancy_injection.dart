
import 'package:dio/dio.dart';
import 'package:doctors/features/login/data/repo/login_repo.dart';
import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/features/signup/data/repo/signup_repo.dart';
import 'package:doctors/features/signup/logic/singup_cubit.dart';
import 'package:doctors/networks/api_services.dart';
import 'package:doctors/networks/dio_factory.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;


void init()  {
  // dio&ApiServices
  Dio dio=DioFactory.create();
  getIt.registerLazySingleton<ApiServices>( ()=> ApiServices( dio));
  //login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo( getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  //register
  getIt.registerLazySingleton<SignUpRepo>(()=>SignUpRepo( getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  
  

} 