import 'package:doctors/features/login/ui/widget/my_rich_text.dart';
import 'package:doctors/features/login/ui/widget/welcome.dart';
import 'package:doctors/helper/area_size.dart';
import 'package:doctors/theming/color_manager.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:doctors/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widget/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey=GlobalKey<FormState>();
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
                    Form(
                      key: formKey,
                      child: Column(children: [
                        
                     const AppTextFormField(
                       hintText: 'Email',
                     ),
                        verticalSpacer(
                           16,
                        ),
                        const AppTextFormField(
                       hintText: 'Password',
                     ),
                        verticalSpacer(
                          16,
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
                        verticalSpacer(
                          32,
                        ),
                        AppButton(
                          buttonName: 'Login',
                          onpress: () {},
                        ),
                        verticalSpacer(
                          110,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14.w),
                          child: const MyRichText(),
                        ),
                    
                      ]),
                    )
                  ],
                ),
              ))),
    );
  }
}

