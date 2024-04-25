import 'package:doctors/features/signup/data/model/signup_request_model.dart';
import 'package:doctors/features/signup/data/repo/signup_repo.dart';
import 'package:doctors/features/signup/logic/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignUpRepo _signUpRepo;
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  SignupCubit(this._signUpRepo) : super(const SignupState.initial());

  Future<void> emitSignupStates() async {
    emit(const SignupState.loading());
    final result = await _signUpRepo.register(SignUpRequestModel(
        email: emailController.text,
        password: passwordController.text,
        phone: phoneController.text,
        name: nameController.text,
        confirmPassword: confirmPasswordController.text,
        gender: '0'));
    result.when(success: (signupresponse) {
      emit(SignupState.success(data: signupresponse));
    }, failure: (errorhandler) {
      emit(SignupState.failure(failure: errorhandler.apiErrorModel.message));
    });
  }

  void validatenThenSignUp() {
    if (formKey.currentState!.validate()) {
    emitSignupStates();
      
    }

  }
}
