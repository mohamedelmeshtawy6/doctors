import 'package:doctors/theming/color_manager.dart';
import 'package:doctors/theming/my_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class Styles {
  static TextStyle font12grey1w4n = TextStyle(
      color: ColorManager.lighterGrey, fontWeight:  MyFontWeight.normalw400, fontSize: 12.sp);
  static TextStyle font12blackw4n = TextStyle(
      color: ColorManager.black, fontWeight:  MyFontWeight.normalw400, fontSize: 12.sp);
  static TextStyle font13greyw4n = TextStyle(
      color: ColorManager.grey, fontWeight:  MyFontWeight.normalw400, fontSize: 13.sp);
  static TextStyle font13bluew4n = TextStyle(
      color: ColorManager.mainBlue, fontWeight:  MyFontWeight.normalw400, fontSize: 13.sp);
  static TextStyle font14greyw4n = TextStyle(
      color: ColorManager.lighterGrey, fontWeight:  MyFontWeight.meduimw500, fontSize: 14.sp);
  static TextStyle font15greyw5n = TextStyle(
      color: ColorManager.grey, fontWeight:  MyFontWeight.meduimw500, fontSize: 15.sp);
  static TextStyle font16whitew6b = TextStyle(
      color:  Colors.white, fontWeight:  MyFontWeight.semiBoldw600, fontSize: 16.sp);
  static TextStyle font24blackw7b = TextStyle(
      color: ColorManager.black, fontWeight: MyFontWeight.boldw700, fontSize: 24.sp);
  static TextStyle font24blurew7b = TextStyle(
      color: ColorManager.mainBlue, fontWeight: MyFontWeight.boldw700, fontSize: 24.sp);
  static TextStyle font32bluew7b = TextStyle(
      color: ColorManager.mainBlue, fontWeight: MyFontWeight.boldw700, fontSize: 32.sp);
}
