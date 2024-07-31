
import 'package:doctors/core/helper/firebase.services.dart';
import 'package:doctors/core/helper/isar_services.dart';
import 'package:doctors/core/helper/secure_storage.dart';
import 'package:doctors/features/login/data/repo/login_repo.dart';
import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/features/setting/logic/cubit/setting_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt=GetIt.instance;


void createAndRegisterDependencies()  {
  // dio&ApiServices
 /*  Dio dio=DioFactory.createOrGetDioInstance();
  getIt.registerLazySingleton<ApiServices>( ()=> ApiServices( dio)); */
  getIt.registerLazySingleton<FirebaseServices>( ()=> FirebaseServices());
  getIt.registerLazySingleton<SecureStorage>( ()=> SecureStorage());
  getIt.registerLazySingleton<IsarService>(()=>IsarService());
  //login
  getIt.registerLazySingleton<LoginRepo>(()=>LoginRepo(firebaseServices:  getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  getIt.registerFactory<SettingCubit>(()=>SettingCubit());
 /*  //register
  getIt.registerLazySingleton<SignUpRepo>(()=>SignUpRepo( getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
   */

} 