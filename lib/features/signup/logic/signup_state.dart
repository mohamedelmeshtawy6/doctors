

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';
@Freezed()
class SignupState<T> with _$SignupState<T> {
  const factory SignupState.initial() = _Initial;
  const factory SignupState.loading() = Loading;
  const factory SignupState.success({required T data}) = Success<T>;
  const factory SignupState.failure({required String failure}) = Failure;
  
}