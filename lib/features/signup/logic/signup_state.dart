

import 'package:doctors/features/signup/data/model/signup_response_body.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';
@Freezed()
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading() = Loading;
  const factory SignUpState.success({required SignUpResponsBody data}) = Success;
  const factory SignUpState.failure({required String failure}) = Failure;
  
}