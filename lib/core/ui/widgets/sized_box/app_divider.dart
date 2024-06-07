import 'package:flutter/material.dart';

import '../../../utils/res/values_manager.dart';

class AppDivider {
  AppDivider._();

  static Divider divider(BuildContext context) =>
      Divider(color: Theme.of(context).colorScheme.outline);
  static Widget dividerPaddingHorizontal32(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_32),
        child: Divider(color: Theme.of(context).colorScheme.outline),
      );
  static Widget dividerPaddingHorizontal6(BuildContext context) => Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_6),
        child: Divider(color: Theme.of(context).colorScheme.outline),
      );
}
