import 'package:flutter/material.dart';

import '../text/ui_text.dart';

class UiTextButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final TextStyle? style;
  final Color? color;
  final TextDecoration? decoration;
  final TextDirection? textDirection;
  final Color? decorationColor;
  final double? fontSize;

  const UiTextButton({
    super.key,
    required this.text,
    this.onTap,
    this.style,
    this.color,
    this.decoration,
    this.textDirection,
    this.decorationColor,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: UiText(
        text,
        style: style ?? theme.textTheme.labelLarge,
        color: color,
        decoration: decoration,
        textDirection: textDirection,
        decorationColor: decorationColor,
        fontSize: fontSize,
      ),
    );
  }
}
