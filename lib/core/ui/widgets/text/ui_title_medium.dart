import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiTitleMedium extends StatelessWidget {
  const UiTitleMedium(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
    this.shadows,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.titleMedium,
      textAlign: textAlign,
      color: color,
      shadows: shadows,
    );
  }
}
