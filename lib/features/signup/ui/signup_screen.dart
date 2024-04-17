import 'package:doctors/features/signup/logic/singup_cubit.dart';
import 'package:doctors/features/signup/ui/widget/form_data.dart';
import 'package:doctors/features/signup/ui/widget/my_rich_text.dart';
import 'package:doctors/features/signup/ui/widget/signup_bloc_lisener.dart';
import 'package:doctors/features/signup/ui/widget/welcome_text.dart';
import 'package:doctors/helper/area_size.dart';
import 'package:doctors/theming/color_manager.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:doctors/widget/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 31.w, vertical: 50.h),
                child: Column(
                  children: [
                    const WelcomeText(),
                    verticalSpacer(
                      36,
                    ),
                    Column(children: [
                      const FormDataWidget(),
                      verticalSpacer(
                        22,
                      ),
                      AppButton(
                          buttonName: 'Sign Up',
                          onpress: () {
                            if (context
                                    .read<SignUpCubit>()
                                    .passwordController
                                    .text ==
                                context
                                    .read<SignUpCubit>()
                                    .confirmPasswordController
                                    .text) {
                              context.read<SignUpCubit>().validatenThenSignUp();
                            } else {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      content: const Text(
                                          'Password and Confirm Password does not match'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'Ok',
                                            style: Styles.font15greyw5n
                                                .copyWith(
                                                    color:
                                                        ColorManager.mainBlue),
                                          ),
                                        )
                                      ],
                                      icon: const Icon(
                                        Icons.error,
                                        color: Colors.red,
                                      ),
                                    );
                                  });
                            }
                          }),
                      verticalSpacer(
                        30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14.w),
                        child: const MyRichText(),
                      ),
                      const SignUpBlocListener(),
                    ])
                  ],
                )),
          )),
    );
  }
}
