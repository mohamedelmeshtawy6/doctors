
import 'package:doctors/features/setting/logic/cubit/setting_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';


class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingState.initial());


  Future<bool> checkInternetConnection() async {
     emit(SettingState.internetLoading ());
   bool result = await InternetConnectionChecker().hasConnection;
if(result == true) {
 emit(SettingState.internetSuccess ());
  return true;
} else {
  emit(SettingState.internetFailed ());
  return false;
}
  }


  
}
