import 'package:doctors/features/signup/data/model/signp_request_body.dart';
import 'package:doctors/features/signup/data/repo/signup_repo.dart';
import 'package:doctors/features/signup/logic/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  Future<void> emitSignUpStates() async {
    emit(const SignUpState.loading());
    final result = await _signUpRepo.register(SignUpRequestBody(
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text,
        name: nameController.text,
        confirmPassword: confirmPasswordController.text,
        gender: '0'));
    result.when(success: (signupresponse) {
      emit(SignUpState.success(data: signupresponse));
    }, failure: (errorhandler) {
      emit(SignUpState.failure(failure: errorhandler.apiErrorModel.message));
    });
  }

  void validatenThenSignUp() {
    if (formKey.currentState!.validate()) {
    emitSignUpStates();
      
    }

  }
}
