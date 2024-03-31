import 'package:doctors/theming/app_colors.dart';
import 'package:doctors/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 28.h),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/svgs/doc_logo.svg',
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text('Doctors', style: Styles.font24black700w),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Stack(
              children: [
                SvgPicture.asset('assets/svgs/doc_logo_with_opacity.svg'),
                Container(
                  foregroundDecoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Colors.white.withOpacity(0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          stops: const [.14, .4])),
                  child: Image.asset(
                    'assets/images/onboarding_doctor.png',
                  ),
                ),
                Positioned(
                  bottom: 30.h,
                  left: 0,
                  right: 0,
                  child: Text(
                      textAlign: TextAlign.center,
                      'Best Doctor\n Appointment App',
                      style: Styles.font32blue700w),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 33.w),
              child: Column(children: [
                Text(
                    'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                    textAlign: TextAlign.center,
                    style: Styles.font13grey400w),
                SizedBox(
                  height: 20.h,
                ),
                TextButton(
                    style: ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                        minimumSize: MaterialStatePropertyAll(
                            Size(double.infinity, 53.h)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            ColorManager.mainBlue)),
                    onPressed: () {},
                    child: Text('Get Started', style: Styles.font16white600w)),
                SizedBox(
                  height: 30.h,
                ),
              ]),
            )
          ]),
        ),
      )),
    );
  }
}
