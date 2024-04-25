import 'package:doctors/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/font_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.buttonName,required this.onpress, this.backgroundColor, this.textstyle, this.buttonWidth, this.buttonHeight, this.borderRiduis});
  final String buttonName;
  final  VoidCallback onpress;
  final Color? backgroundColor;  
  final TextStyle? textstyle;
  final double ?buttonWidth;
  final double ?buttonHeight;
  final double ?borderRiduis;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular( borderRiduis??16))),
            minimumSize: MaterialStatePropertyAll(Size(buttonWidth?? double.infinity,buttonHeight?? 53.h)),
            backgroundColor:
                MaterialStateProperty.all<Color>( backgroundColor?? AppColors.mainBlue)),
        onPressed: onpress,
        child: Text(buttonName, style:textstyle?? Styles.font16whitew6b));
  }
}
