import 'package:flutter/material.dart';
import 'package:meal_monkey/core/constant/font_manager.dart';

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize,
      fontFamily: FontConstants.fontFamily,
      color: color,
      fontWeight: fontWeight);
}

// regular style

TextStyle getRegularStyle15(
    {double fontSize = FontSize.s15, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getRegularStyle21(
    {double fontSize = FontSize.s21, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

// Bold style
TextStyle getBoldStyle34(
    {double fontSize = FontSize.s34, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getBoldStyle16(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getBoldStyle22(
    {double fontSize = FontSize.s22, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}
// light style

TextStyle getLightStyle(
    {double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getLightStyle15(
    {double fontSize = FontSize.s15, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getMeduimStyle(
    {double fontSize = FontSize.s20, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}
