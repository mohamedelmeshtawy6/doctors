
import 'package:doctors/features/login/logic/cubit/login_cubit.dart';
import 'package:doctors/features/login/ui/widget/email_and_password.dart';
import 'package:doctors/features/login/ui/widget/login_bloc_listener.dart';
import 'package:doctors/features/login/ui/widget/my_rich_text.dart';
import 'package:doctors/features/login/ui/widget/welcome.dart';
import 'package:doctors/helper/area_size.dart';
import 'package:doctors/theming/app_colors.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:doctors/widget/app_button.dart';
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
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            activeColor: Colors.amber,
                            checkColor: AppColors.moreBlue,
                            onChanged: (val) {},
                          ),
                          Text(
                            'Remember',
                            style: Styles.font13greyw4n,
                          ),
                          const Spacer(),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forgot Password?',
                                style: Styles.font13mainBluew4n,
                              ))
                        ],
                      ),
                      verticalSpacer(
                        32,
                      ),
                      AppButton(
                          buttonName: 'Login',
                          onpress: () {
                            context.read<LoginCubit>().validatenThenLogin();
                          }),
                      verticalSpacer(
                        50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: const MyRichText(),
                      ),
                      const LoginBlocListener(),
                    ])
                  ],
                ),
              ))),
    );
  }

 
}

