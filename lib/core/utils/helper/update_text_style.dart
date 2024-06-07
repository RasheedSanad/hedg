import 'package:flutter/rendering.dart';

TextStyle UpdateTextStyle({
    required TextStyle? previousTextStyle,
    Color? color,
    String? fontFamily,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    List<Shadow>? shadows,
    TextDecoration? decoration,
    Color? decorationColor,
  }) {
    return TextStyle(
      color: color ?? previousTextStyle?.color,
      fontFamily: fontFamily ?? previousTextStyle?.fontFamily,
      fontSize: fontSize ?? previousTextStyle?.fontSize,
      fontWeight: fontWeight ?? previousTextStyle?.fontWeight,
      fontStyle: fontStyle?? previousTextStyle?.fontStyle,
      shadows:  shadows ?? previousTextStyle?.shadows,
      decoration: decoration,
      decorationColor: decorationColor,
    );}