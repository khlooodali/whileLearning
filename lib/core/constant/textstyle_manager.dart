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

TextStyle getRegularStyle10(
    {double fontSize = FontSize.s10, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}

TextStyle getRegularStyle37(
    {double fontSize = FontSize.s37, required Color color}) {
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

TextStyle getsemiBold({double fontSize = FontSize.s16, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.medium, color);
}

TextStyle getextraBold({double fontSize = FontSize.s28, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.extrabold, color);
}

TextStyle getextraBold25(
    {double fontSize = FontSize.s25, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.extrabold, color);
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
    {double fontSize = FontSize.s13, required Color color}) {
  return _getTextStyle(fontSize, FontWeightManager.regular, color);
}
