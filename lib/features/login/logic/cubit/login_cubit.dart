import 'dart:developer';

import 'package:doctors/features/login/data/model/login_body_model.dart';
import 'package:doctors/features/login/data/repo/login_repo.dart';
import 'package:doctors/features/login/logic/cubit/login_state.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final formKey = GlobalKey<FormState>();
  final urlController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  Future<void> emitLoginStates() async {
    emit(const LoginState.loading());

    final result = await _loginRepo.cheeckIfOrganizationExists(
        serverUrl: urlController.text);
    result.when(success: (val) {
      if (val == null) {
        emit(const LoginState.failed(
            error: 'Organization does not exist on system'));
      } else {
        final body = LoginBodyModel(
          databaseName: val.databaseName,
          serverUrl: urlController.text,
          userName: emailController.text,
          password: passwordController.text,
        );
        _loginRepo
            .initializeOdooConnection(loginBodyModel: body)
            .then((result) {
          result.when(
            success: (loginresponse) {
              emit(LoginState.success(data: loginresponse));
              log("authenticated successfully");
              
            },
            failure: (errorhandler) {
              emit(LoginState.failed(
                  error: errorhandler.apiErrorModel.message));
            },
          );
        });
      }
    }, failure: (errorhandler) {
      emit(LoginState.failed(error: errorhandler.apiErrorModel.message));
    });
  }

  void validatenThenLogin() {
    if (formKey.currentState!.validate()) {

     emitLoginStates();
    }
  }
}
