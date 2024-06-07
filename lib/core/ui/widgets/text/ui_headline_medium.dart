import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiHeadlineMedium extends StatelessWidget {
  const UiHeadlineMedium(
    this.text, {
    super.key,
    this.textAlign,
    this.shadows,
  });
  final String text;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.headlineMedium,
      textAlign: textAlign,
      shadows: shadows,
    );
  }
}
