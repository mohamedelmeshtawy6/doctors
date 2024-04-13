import 'package:doctors/theming/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Welcome Back', style: Styles.font24mainBluew7b),
        SizedBox(
          height: 8.h,
        ),
        Text(
            'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
            style: Styles.font13greyw4n),
      ],
    );
  }
}