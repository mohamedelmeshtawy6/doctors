
import 'package:doctors/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome Back', style: Styles.font24mainBluew7b),
        SizedBox(
          height: 8.h,
        ),
        Text(
            'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.Welcome Back',
            style: Styles.font13greyw4n),
      ],
    );
  }
}
