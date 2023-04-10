import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resources.dart';

class FontWeightManager {
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;
  static const FontWeight black = FontWeight.w900;
}

TextStyle getTextStyle(
    double fontSize, FontWeight fontWeight, Color color) {
  return GoogleFonts.encodeSans(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color);
}

// regular style
TextStyle getRegularStyle(
    {double fontSize = 14, Color color = ColorManager.black}) {
  return getTextStyle(
      fontSize, FontWeightManager.regular, color);
}

// light style
TextStyle getLightStyle(
    {double fontSize = 14, Color color = ColorManager.black}) {
  return getTextStyle(
      fontSize, FontWeightManager.light, color);
}

// bold style
TextStyle getBoldStyle(
    {double fontSize = 14, Color color = ColorManager.black}) {
  return getTextStyle(
      fontSize, FontWeightManager.bold, color);
}

// semi bold style
TextStyle getSemiBoldStyle(
    {double fontSize = 14, Color color = ColorManager.black}) {
  return getTextStyle(
      fontSize, FontWeightManager.semiBold, color);
}

// medium style
TextStyle getMediumStyle(
    {double fontSize = 14, Color color = ColorManager.black}) {
  return getTextStyle(
      fontSize, FontWeightManager.medium, color);
}