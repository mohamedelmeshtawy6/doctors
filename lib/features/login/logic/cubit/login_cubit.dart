import 'package:doctors/features/login/data/model/login_request_model.dart';
import 'package:doctors/features/login/data/repo/login_repo.dart';
import 'package:doctors/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> emitLoginStates() async {
    emit(const LoginState.loading());
    final result = await _loginRepo.login(LoginRequestModel(
        email: emailController.text, password: passwordController.text));
    result.when(success: (loginresponse) {
      emit(LoginState.success(data: loginresponse));
    }, failure: (errorhandler) {
      emit(LoginState.failure(failure: errorhandler.apiErrorModel.message));
    });
  }

  void validatenThenLogin() {
    if (formKey.currentState!.validate()) {
      emitLoginStates();
    }
  }
}
