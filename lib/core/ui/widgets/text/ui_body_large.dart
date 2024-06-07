import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiBodyLarge extends StatelessWidget {
  const UiBodyLarge(
    this.text, {
    super.key,
    this.color,
    this.textAlign,
  });
  final String text;
  final Color? color;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.bodyLarge,
      color: color,
      textAlign: textAlign,
    );
  }
}
