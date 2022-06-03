import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Colors.white,
  primaryColorDark: kLightStrokeColor,
  primaryColorLight: kLightFillColor,
  primaryColor: kLightPrimary,
  shadowColor: Colors.white,
  cardColor: const Color(0xffF1F3F6),
  bottomAppBarColor: kLightPrimary,
  dividerColor: kLightDividerColor,
  iconTheme: const IconThemeData(
    color: Color(0xFF3A4276),
  ),
  textTheme: TextTheme(
    button: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFF9314),
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    subtitle1: GoogleFonts.bebasNeue(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFF2D2D2D),
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF959595),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: kDarkPrimary,
  primaryColorDark: kDarkStrokeColor,
  shadowColor: kDarkStrokeColor,
  primaryColorLight: kDarkFillColor,
  bottomAppBarColor: kDarkFillColor,
  dividerColor: kDarkDividerColor,
  iconTheme: const IconThemeData(
    color: Color(0xff7b7f9e),
  ),
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF7D7D7D),
    ),
    border: InputBorder.none,
    filled: true,
    fillColor: const Color(0xFF1C2431),
  ),
  cardColor: const Color(0xFF212330),
  textTheme: TextTheme(
    button: GoogleFonts.poppins(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: kDarkPrimary,
    ),
    headline3: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline4: GoogleFonts.poppins(
      fontSize: 24.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline5: GoogleFonts.poppins(
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFF9314),
    ),
    headline6: GoogleFonts.poppins(
      fontSize: 14.sp,
      fontWeight: FontWeight.w400,
      color: kLightTextColor,
    ),
    subtitle1: GoogleFonts.bebasNeue(
      fontSize: 18.sp,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText1: GoogleFonts.poppins(
      fontSize: 10.sp,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF959595),
    ),
  ),
);
