

import 'dart:developer';

import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/features/login/ui/widget/email_and_password.dart';
import 'package:doctors/features/login/ui/widget/login_bloc_listener.dart';
import 'package:doctors/features/login/ui/widget/my_rich_text.dart';
import 'package:doctors/features/login/ui/widget/welcome.dart';
import 'package:doctors/core/helper/area_size.dart';


import 'package:doctors/core/widget/app_button.dart';
import 'package:doctors/features/setting/logic/cubit/setting_cubit.dart';
import 'package:doctors/features/setting/ui/setting_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 50.h),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const WelcomeText(),
                    verticalSpacer(
                      36,
                    ),
                    Column(children: [
                      const EmailAndPassword(),
                      verticalSpacer(
                        16,
                      ),
                  
                      verticalSpacer(
                        32,
                      ),
                      AppButton(
                          buttonName: 'Login',
                          onpress: ()async {
                      bool result=   await context.read<SettingCubit>().checkInternetConnection();
                        result?    context.read<LoginCubit>().validatenThenLogin():  log('no internet');
                          }),
                      verticalSpacer(
                        50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: const MyRichText(),
                      ),
                      const LoginBlocListener(),
                      const SettingBlocListener()
                    ])
                  ],
                ),
              ))),
    );
  }

}

