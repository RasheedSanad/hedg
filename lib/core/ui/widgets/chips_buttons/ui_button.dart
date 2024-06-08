import 'package:flutter/material.dart';
import 'package:hedg/core/utils/theme/app_color.dart';

import '../text/ui_text.dart';

class UiButton extends StatelessWidget {
  UiButton({
    super.key,
    required this.text,
    this.textStyle,
    required this.onPressed,
    this.buttonColor,
    this.buttonTextStyle,
    this.isMaxWidth = false,
    this.statesController,
    this.textColor,
    this.textAlign,
    this.isLoading = false,
  });
  final String text;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final TextStyle? buttonTextStyle;
  final Color? buttonColor;
  final Color? textColor;
  final bool isMaxWidth;
  final bool isLoading;
  final MaterialStatesController? statesController;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        textStyle: buttonTextStyle ?? theme.textTheme.labelLarge,
        backgroundColor: buttonColor ?? AppColor.primary,
        minimumSize: isMaxWidth ? const Size.fromHeight(45) : null,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      statesController: statesController,
      child: UiText(
        text,
        style: textStyle ?? theme.textTheme.labelLarge,
        color: textColor ?? AppColor.onPrimary,
        textAlign: textAlign,
      ),
    );
  }
}
