
import 'package:freezed_annotation/freezed_annotation.dart';

part 'setting_state.freezed.dart';
@Freezed()
class SettingState<T> with _$SettingState<T> {
  const factory SettingState.initial() = _Initial;
  const factory SettingState.internetLoading() = IntenetLoading;
  const factory SettingState.internetSuccess() = IntenetSuccess;
  const factory SettingState.internetFailed() = IntenetFailed;
}


