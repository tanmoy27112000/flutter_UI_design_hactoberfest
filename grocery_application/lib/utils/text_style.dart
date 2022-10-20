import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextStyle {
  static const String frankFont = "Frank_Ruhl_Libre";
  static const String latoFont = "Lato";

  static TextStyle get normalFrankFont => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamily: frankFont,
        color: Colors.black,
      );

  static TextStyle get normalLatoFont => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        fontFamily: latoFont,
        color: Colors.black,
      );
}
