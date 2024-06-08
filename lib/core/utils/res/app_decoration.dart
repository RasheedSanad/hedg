import 'package:flutter/material.dart';

import '../theme/app_color.dart';
import 'app_shadow.dart';
import 'values_manager.dart';

class AppDecoration {
  AppDecoration._();
  static BoxDecoration d1() => BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(
          AppSizes.RADIUS_14,
        ),
        boxShadow: AppShadow.shadow(),
      );
}
