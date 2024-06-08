import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiLabelMedium extends StatelessWidget {
  const UiLabelMedium(
    this.text, {
    super.key,
    this.color,
    this.decoration,
    this.textAlign,
    this.fontSize,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final double? fontSize;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.labelMedium,
      color: color,
      textAlign: textAlign,
      decoration: decoration,
      decorationColor: color ?? Theme.of(context).colorScheme.primary,
      fontSize: fontSize,
    );
  }
}
