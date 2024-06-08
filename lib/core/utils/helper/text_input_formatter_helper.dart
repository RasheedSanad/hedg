import 'package:flutter/services.dart';

import 'reg_exp_helper.dart';

class TextInputFormatterHelper {
  TextInputFormatterHelper._();
  //?  The types of TextInputFormatter
  //*  The Flutter framework provides us with "two" built-in TextInputFormatter:
  /// FilteringTextInputFormatter — creates a formatting tool that allows or blocks characters that match the pattern.
  /// LengthLimitingTextInputFormatter — allows you to insert only a certain number of characters.
  /// Example
  // List<TextInputFormatter>? inputFormatters =[
  //     FilteringTextInputFormatter.digitsOnly,
  //     LengthLimitingTextInputFormatter(4),
  //   ];

  List<TextInputFormatter>? _examples = [
    LengthLimitingTextInputFormatter(4),
  ];
  

  static List<TextInputFormatter>? name = [
    _onlyLetters,
    LengthLimitingTextInputFormatter(250),
  ];

  static List<TextInputFormatter>? age = [
    _onlyDigit,
    LengthLimitingTextInputFormatter(4),
  ];
  static List<TextInputFormatter>? number = [
    _onlyDigit,
    LengthLimitingTextInputFormatter(15),
  ];

  static List<TextInputFormatter>? phoneNumber = [
    _phoneNumber,
    // MaskedInputFormatter('(###) ###-###')
  ];
  static List<TextInputFormatter>? height = [
    _onlyDigit,
    LengthLimitingTextInputFormatter(3),
  ];
  static List<TextInputFormatter>? weight = [
    _onlyDigit,
    LengthLimitingTextInputFormatter(3),
  ];

  static final FilteringTextInputFormatter _onlyDigit =
      FilteringTextInputFormatter.allow(RegExpHelper.onlyDigit); // only digits
  static final FilteringTextInputFormatter _onlyLetters =
      FilteringTextInputFormatter.allow(
          RegExpHelper.onlyLetters); // only letters
  static final FilteringTextInputFormatter _singleLine =
      FilteringTextInputFormatter.deny('\n');
  static final FilteringTextInputFormatter _withoutDashes =
      FilteringTextInputFormatter.deny(
          RegExpHelper.withoutDashes); // Without Dashes
  static final FilteringTextInputFormatter _withoutWhitespace =
      FilteringTextInputFormatter.deny(
          RegExpHelper.withoutWhitespace); // Without Whitespace
  static final FilteringTextInputFormatter _phoneNumber =
      FilteringTextInputFormatter.allow(
          RegExpHelper.phoneNumberRegExp); // only letters
   // only letters
  /// all Input formatting [inputFormatters]
  /// * Create a text field which does not allow spaces

  /// * to filter input : decimal number
  //   keyboardType: TextInputType.numberWithOptions(decimal: allowDecimal),
  // inputFormatters: <TextInputFormatter>[
  //   FilteringTextInputFormatter.allow(RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
  //   TextInputFormatter.withFunction(
  //     (oldValue, newValue) => newValue.copyWith(
  //       text: newValue.text.replaceAll('.', ','),
  //     ),
  //   ),
  // ],
}
