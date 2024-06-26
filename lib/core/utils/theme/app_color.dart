// Color converter: https://www.w3schools.com/colors/colors_converter.asp
// Transparency list
// 100% FF
// 95%  F2
// 90%  E6
// 87%  DE
// 85%  D9
// 80%  CC
// 75%  BF
// 70%  B3
// 65%  A6
// 60%  99
// 55%  8C
// 54%  8A
// 50%  80
// 45%  73
// 40%  66
// 35%  59
// 32%  52
// 30%  4D
// 26%  42
// 25%  40
// 20%  33
// 16%  29
// 15%  26
// 12%  1F
// 10%  1A
// 5%   0D
// 0%   00
import 'package:flutter/material.dart';

class AppColor {
  AppColor._(); // Private constructor to prevent instantiation

  static const Color white = Color(0xffffffff);
  static const Color orange = Color(0xffEF5830);
  static const Color color1 = Color(0xffF1F6FF);

  static const Color color2 = Color(0xff1B404F);
  static const Color blue = Color(0xff098AD3);
  static const Color blue15Transparency = Color(0x26098AD3); // new
  static const Color secondary = Color(0xff00BF54);
  static const Color subSecondary = Color(0xffB3ECCC); // new
  static const Color onSecondary = Color(0xffffffff); // new
  static const Color color4 = Color(0xff235347);
  static const Color color5 = Color(0xff00BF90);
  static const Color color6 = Color(0xff0DD967);
  static const Color primary = Color(0xff1B506F);
  static const Color onPrimary = Color(0xffffffff); // new
  static const Color primaryContainer = Color(0xffF2F7FF);
  static const Color onPrimaryContainer = Color(0xff000000);
  static const Color disablePrimary = Color(0xff1B506F); // new
  static const Color color8 = Color(0xffFFC53E);
  static const Color color9 = Color(0xff6E838F);
  static const Color color10 = Color(0xffF2F7FF);
  static const Color color11 = Color(0xff1B506F);
  // * new color
  static const Color background = Color(0xffffffff);
  static const Color surface = Color(0xffffffff);
  static const Color labelColor = Color(0xff6E838F);
  static const Color textFormField = Color(0xff10284A);
  static const Color squareBtn = Color(0xffE6F3FB);
  static const Color outline = Color(0x1A10284A); // 10% transparency
  static const Color inActiveColor = Color(0xffB3CBEF);
  static Color error = Colors.red.shade700;
}
