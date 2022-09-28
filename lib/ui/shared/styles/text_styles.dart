import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTextStyles {

  static TextStyle h1 = _getTextStyle(46, FontWeight.w600);
  static TextStyle h2 = _getTextStyle(34, FontWeight.w600);
  static TextStyle h3 = _getTextStyle(24, FontWeight.w600);
  static TextStyle h4 = _getTextStyle(12, FontWeight.w600);
  static TextStyle subtitle1 = _getTextStyle(24, FontWeight.w300);
  static TextStyle subtitle2 = _getTextStyle(18, FontWeight.w300);
  static TextStyle subtitle3 = _getTextStyle(16, FontWeight.w300);
  static TextStyle body1 = _getTextStyle(16, FontWeight.w400);
  static TextStyle body2 = _getTextStyle(14, FontWeight.w400);
  static TextStyle buttonText1 = _getTextStyle(18, FontWeight.w700);



  static TextStyle _getTextStyle(
    double fontSize,
    FontWeight fontWeight,
  ) =>
      GoogleFonts.raleway(
          fontSize: fontSize,
          fontWeight: fontWeight,
          height: 1.25,
          color: AppColors.white);


}
