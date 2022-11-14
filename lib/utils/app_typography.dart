import 'package:flutter/material.dart';
import 'package:food_app/utils/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTypography {
  static TextStyle blackw400 = GoogleFonts.poppins(
    color: AppColor.blackColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle redw400 = GoogleFonts.poppins(
    color: AppColor.redColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle whitew400 = GoogleFonts.poppins(
    color: AppColor.whiteColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle bluew400 = GoogleFonts.poppins(
    color: AppColor.blueColor,
    fontWeight: FontWeight.w400,
  );

  static TextStyle greyw400 = GoogleFonts.poppins(
    color: AppColor.greyColor,
    fontWeight: FontWeight.w400,
  );
}
