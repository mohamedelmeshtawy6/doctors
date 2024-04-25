import 'package:doctors/theming/app_colors.dart';
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
      this.obscureText,
       this.controller,
      required this.validator});
  final Color? fillColor;
  final Color? focusColor;
  final Color? activeColor;
  final double? contentPaddingHorizontal;
  final double? contentPaddingVertical;
  final double? borderRidus;
  final String hintText;
  final Widget? suffix;
  final bool? obscureText;
  final TextEditingController ?controller;
  final Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (val){return validator(val);},
        obscureText: obscureText ?? false,
        controller:controller,
        decoration: InputDecoration(
          filled: true,
          isDense: true,
          suffix: suffix,
          contentPadding: EdgeInsets.symmetric(
              horizontal: contentPaddingHorizontal?.w ?? 20.w,
              vertical: contentPaddingVertical?.h ?? 16.h),
          fillColor: fillColor ?? AppColors.morelighterGrey,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16)),
          hintText: hintText,
          hintStyle: Styles.font14lighterGreyw4n,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16),
              borderSide:
                  BorderSide(color: focusColor ?? AppColors.mainBlue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16),
              borderSide: BorderSide(
                  color: activeColor ?? AppColors.morelighterGrey)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16),
              borderSide: const BorderSide(color: Colors.red,width: 1.3)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRidus ?? 16),
              borderSide: const BorderSide(color: Colors.red,width: 1.3)),
        ));
  }
}
