import 'package:flutter/material.dart';
import 'package:hedg/core/utils/theme/app_color.dart';

import '../../../utils/res/values_manager.dart';
// import 'package:zlib/core/utils/res/values_manager.dart';

class UiChipIcon extends StatelessWidget {
  UiChipIcon({
    super.key,
    required this.icon,
    this.textStyle,
    this.backgroundColor,
    this.onPressed,
    this.textColor,
  });
  final TextStyle? textStyle;
  final Widget? icon;
  final Color? backgroundColor;
  final Color? textColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    // ThemeData theme = Theme.of(context);
    return RawChip(
      // shadowColor: theme.colorScheme.shadow,
      backgroundColor: backgroundColor ?? AppColor.primaryContainer,
      padding: const EdgeInsets.only(bottom: AppSizes.PADDING_0),
      side: BorderSide.none,

      labelPadding: const EdgeInsets.only(bottom: AppSizes.PADDING_0),
      label: ClipRRect(
        borderRadius: BorderRadius.circular(AppSizes.RADIUS_30),
        child: CircleAvatar(
          radius: AppSizes.RADIUS_30,
          backgroundColor: backgroundColor ?? AppColor.primaryContainer,
          child: icon,
        ),
      ),

      pressElevation: 3,
      elevation: 2,

      onPressed: onPressed,
    );
  }
}
