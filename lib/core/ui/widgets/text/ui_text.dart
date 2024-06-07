import 'package:flutter/material.dart';

import '../../../utils/helper/update_text_style.dart';

class UiText extends StatelessWidget {
  UiText(
    this.text, {
    this.style,
    this.textAlign,
    this.color,
    super.key,
    this.shadows,
    this.maxLines,
    this.decoration,
    this.textDirection,
    this.decorationColor,
    this.fontSize,
    this.fontStyle,
  });
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final Color? color;
  List<Shadow>? shadows;
  final int? maxLines;
  final TextDecoration? decoration;
  final TextDirection? textDirection;
  final Color? decorationColor;
  final double? fontSize;
  final FontStyle? fontStyle;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: UpdateTextStyle(
        previousTextStyle: style,
        color: color,
        shadows: shadows,
        decoration: decoration,
        decorationColor: decorationColor,
        fontSize: fontSize,
        fontStyle: fontStyle,
      ),
      textAlign: textAlign,
      textDirection: textDirection,
      // textScaleFactor: 0.9,
      maxLines: maxLines,
    );
  }
}
