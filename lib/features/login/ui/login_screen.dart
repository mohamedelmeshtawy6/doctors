import 'package:doctors/features/login/ui/widget/welcome.dart';
import 'package:doctors/theming/color_manager.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:doctors/widget/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
                    SizedBox(
                      height: 36.h,
                    ),
                    Column(children: [
                      TextFormField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorManager.whitegrey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        hintText: 'Email',
                        hintStyle: Styles.font15greyw5n,
                      )),
                      SizedBox(
                        height: 16.h,
                      ),
                      TextFormField(
                          decoration: InputDecoration(
                        filled: true,
                        fillColor: ColorManager.whitegrey,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16)),
                        hintText: 'Passsword',
                        hintStyle: Styles.font15greyw5n,
                      )),
                      SizedBox(
                        height: 16.h,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: true,
                            activeColor: Colors.amber,
                            checkColor: ColorManager.blueCheck,
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
                                style: Styles.font13bluew4n,
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 32.h,
                      ),
                      Button(
                        buttonName: 'Login',
                        onpress: () {},
                      ),
                      SizedBox(
                        height: 110.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: RichText(
                            text: TextSpan(children: <TextSpan>[
                          TextSpan(
                              text: 'By logging, you agree to our ',
                              style: Styles.font12grey1w4n),
                          TextSpan(
                              text: 'Terms & Conditions ',
                              style: Styles.font12blackw4n),
                          TextSpan(text: 'and ', style: Styles.font12grey1w4n),
                          TextSpan(
                              text: 'PrivacyPolicy.',
                              style: Styles.font12blackw4n),
                        ])),
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                      RichText(
                          text: TextSpan(children: <TextSpan>[
                        TextSpan(
                            text: 'Already have an account yet? ',
                            style: Styles.font12blackw4n),
                        TextSpan(
                            text: 'Sign Up  ', style: Styles.font13bluew4n),
                      ])),
                    ])
                  ],
                ),
              ))),
    );
  }
}
