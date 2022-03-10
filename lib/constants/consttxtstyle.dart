import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_ui_chefio/constants/constcolor.dart';

class ConstTxtStyle {
  // HEADING
  static TextStyle heading1({Color textColor = ConstColor.mainText}) =>
      GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        letterSpacing: 0.5,
        color: textColor,
      );

  static TextStyle heading2({Color textColor = ConstColor.mainText}) =>
      GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        fontSize: 17,
        letterSpacing: 0.5,
        color: textColor,
      );

  static TextStyle heading3({Color textColor = ConstColor.mainText}) =>
      GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        fontSize: 15,
        letterSpacing: 0.5,
        color: textColor,
      );

  // PARAGRAPH
  static TextStyle paragraph1({Color textColor = ConstColor.mainText}) =>
      GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 17,
        letterSpacing: 0.5,
        color: textColor,
      );

  static TextStyle paragraph2({Color textColor = ConstColor.mainText, FontWeight fontWeight = FontWeight.w500}) =>
      GoogleFonts.inter(
        fontWeight: fontWeight,
        fontSize: 15,
        letterSpacing: 0.5,
        color: textColor,
      );

  //SMALL
  static TextStyle small({Color textColor = ConstColor.mainText}) =>
      GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 12,
        letterSpacing: 0.5,
        color: textColor,
      );
}
