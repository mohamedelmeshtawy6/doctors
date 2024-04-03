import 'package:doctors/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/font_styles.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.buttonName, this.onpress});
  final String buttonName;
  final void Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            minimumSize: MaterialStatePropertyAll(Size(double.infinity, 53.h)),
            backgroundColor:
                MaterialStateProperty.all<Color>(ColorManager.mainBlue)),
        onPressed: onpress,
        child: Text(buttonName, style: Styles.font16whitew6b));
  }
}
