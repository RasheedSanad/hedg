import 'package:flutter/material.dart';
import 'package:hedg/core/utils/theme/app_color.dart';

import 'values_manager.dart';

class AppShadow {
  AppShadow._(); // Private constructor to prevent instantiation
  static List<BoxShadow> shadow() => [
        BoxShadow(
          blurRadius: AppSizes.RADIUS_10,
          offset: const Offset(0, 3),
          color: AppColor.blue15Transparency,
          spreadRadius: AppSizes.RADIUS_0,
          // inset: isPressed,
        ),
      ];
}
