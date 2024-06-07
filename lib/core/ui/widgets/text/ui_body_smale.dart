import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiBodySmall extends StatelessWidget {
  const UiBodySmall(
    this.text, {
    super.key,
    this.textAlign,
    this.color,
    this.textDirection,
  });
  final String text;
  final TextAlign? textAlign;
  final Color? color;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: textAlign,
      color: color,
      textDirection: textDirection,
    );
  }
}
