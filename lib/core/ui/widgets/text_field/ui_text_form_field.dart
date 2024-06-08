import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hedg/core/utils/theme/app_color.dart';

import '../../../utils/helper/update_text_style.dart';
import '../../../utils/res/values_manager.dart';

class UiTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  Widget? suffixIcon;
  final bool obscureText;
  final Color? focusedColor;
  final String? initialValue;

  // final Function save;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final String hintText;
  final String? labelText;
  final int? numLines;
  final Function(String)? onChanged;
  final TextStyle? labelStyle, hintStyle, floatingLabelStyle;
  final Color? colorFocusedBorder;
  final FloatingLabelBehavior floatingLabelBehavior;

  /// [inputFormatters]  use this TextInputFormatterHelper
  final List<TextInputFormatter>? inputFormatters;
  final bool readOnly;
  final TextDirection? textDirection;
  final TextDirection? hintTextDirection;
  final bool? enableInteractiveSelection;
  final bool autofocus;
  final FocusNode? focusNode;
  final Function()? onEditingComplete;
  final TextAlign textAlign;
  final bool enableSuggestions;
  final ValueChanged<String>? onFieldSubmitted;
  final String? errorText;
  final AutovalidateMode? autovalidateMode;
  final InputBorder? enabledBorder;
  UiTextFormField({
    super.key,
    this.numLines = 1,
    this.floatingLabelBehavior = FloatingLabelBehavior.always,
    this.labelStyle,
    this.hintStyle,
    this.onChanged,
    this.floatingLabelStyle,
    this.labelText,
    this.controller,
    required this.hintText,
    this.textInputAction,
    this.colorFocusedBorder,
    this.validator,
    this.keyboardType,
    this.enabledBorder,
    this.suffixIcon,
    this.obscureText = false,
    this.focusedColor,
    this.inputFormatters,
    this.initialValue,
    this.readOnly = false,
    this.textDirection,
    this.autovalidateMode,
    this.errorText,
    this.enableInteractiveSelection,
    this.autofocus = false,
    this.focusNode,
    this.onEditingComplete,
    this.hintTextDirection,
    this.onFieldSubmitted,
    this.textAlign = TextAlign.start,
    this.enableSuggestions = true,
  });

  @override
  Widget build(BuildContext context) {
    // final Locale f = Localizations.localeOf(context);
    ThemeData theme = Theme.of(context);
    Size size = MediaQuery.of(context).size;

    return TextFormField(
      onEditingComplete: onEditingComplete,
      keyboardType: keyboardType,
      cursorColor: AppColor.textFormField,
      cursorHeight: AppSizes.HEIGHT_30,

      inputFormatters: inputFormatters,
      initialValue: initialValue,
      onFieldSubmitted: onFieldSubmitted,
      readOnly: readOnly,
      autofocus: autofocus,

      enableSuggestions: enableSuggestions,
      enableInteractiveSelection: enableInteractiveSelection,
      autovalidateMode: autovalidateMode,
      // style: theme.textTheme.bodyLarge,
      style: UpdateTextStyle(
        previousTextStyle: labelStyle ?? theme.textTheme.labelLarge,
        // color: AppColor.primary,
        // fontSize: SizeConfig.getFontSize(14, context),
      ),
      controller: controller,
      textInputAction: textInputAction,

      maxLines: numLines,
      validator: validator,
      onChanged: onChanged,
      obscureText: obscureText,
      textDirection: textDirection,
      focusNode: focusNode,

      textAlign: textAlign,
      // selectionControls:TextSelection.fromPosition(position),
      // textDirection: textDirection ??
      //     ((f == CLanguageManager.ARABIC_LOCAL)
      //         ? TextDirection.rtl
      //         : TextDirection.ltr),
      decoration: InputDecoration(
        hintTextDirection: hintTextDirection,
        constraints: BoxConstraints(maxHeight: AppSizes.HEIGHT_44),
        suffixIcon: suffixIcon,
        fillColor: AppColor.white,
        filled: true,
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(AppSizes.RADIUS_4),
              borderSide: BorderSide(color: AppColor.outline, width: 1),
            ),
        errorText: errorText,
        contentPadding: EdgeInsets.symmetric(
            vertical: AppSizes.PADDING_0, horizontal: AppSizes.PADDING_16),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.RADIUS_4),
          borderSide:
              BorderSide(color: focusedColor ?? AppColor.primary, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColor.error, width: 1),
          borderRadius: BorderRadius.circular(AppSizes.RADIUS_4),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.RADIUS_4),
          borderSide: BorderSide(color: AppColor.error, width: 1),
        ),
        hintStyle: UpdateTextStyle(
          previousTextStyle: hintStyle ?? theme.textTheme.labelLarge,
          // fontSize: SizeConfig.getFontSize(14, context),
        ),
        hintText: hintText,
        floatingLabelStyle: floatingLabelStyle,
        labelText: labelText,
        floatingLabelBehavior: floatingLabelBehavior,
        labelStyle: UpdateTextStyle(
          previousTextStyle: labelStyle ?? theme.textTheme.labelLarge,
          // color: AppColor.primary,
          // fontSize: SizeConfig.getFontSize(14, context),
        ),
        alignLabelWithHint: true,
      ),
    );
  }
}
