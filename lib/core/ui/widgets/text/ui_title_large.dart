import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiTitleLarge extends StatelessWidget {
  const UiTitleLarge(
    this.text, {
    super.key,
    this.textAlign,
    this.shadows,
    this.color,
    this.decoration,
    this.decorationColor,
  });
  final String text;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;
  final Color? color;
  final TextDecoration? decoration;
  final Color? decorationColor;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.titleLarge,
      textAlign: textAlign,
      shadows: shadows,
      decoration: decoration,
      decorationColor: decorationColor,
      color: color,
    );
  }
}
