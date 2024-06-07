import 'package:flutter/material.dart';

import 'ui_text.dart';

class UiHeadlineSmall extends StatelessWidget {
  const UiHeadlineSmall(
    this.text, {
    super.key,
    this.textAlign,
  });
  final String text;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return UiText(
      text,
      style: Theme.of(context).textTheme.headlineSmall,
      textAlign: textAlign,
    );
  }
}
