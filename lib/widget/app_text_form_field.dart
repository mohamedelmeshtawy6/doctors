import 'package:doctors/theming/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/font_styles.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key,
      this.fillColor,
      this.focusColor,
      this.activeColor,
      this.contentPaddingHorizontal,
      this.contentPaddingVertical,
      this.borderRidus,
      required this.hintText,
      this.suffix,
      this.obscureText});
  final Color? fillColor;
  final Color? focusColor;
  final Color? activeColor;
  final double? contentPaddingHorizontal;
  final double? contentPaddingVertical;
  final double? borderRidus;
  final String hintText;
  final Widget? suffix;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          suffix: suffix,
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentPaddingHorizontal?.w ?? 20.w,
              vertical: contentPaddingVertical?.h ?? 16.h),
          fillColor: fillColor ?? ColorManager.morelighterGrey,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16)),
          hintText: hintText,
          hintStyle: Styles.font14greyw4n,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16),
              borderSide:
                  BorderSide(color: focusColor ?? ColorManager.mainBlue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16),
              borderSide: BorderSide(
                  color: activeColor ?? ColorManager.morelighterGrey)),
        ));
  }
}
