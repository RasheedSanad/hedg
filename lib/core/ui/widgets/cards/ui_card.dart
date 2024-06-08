import 'package:flutter/material.dart';

import '../../../utils/res/app_decoration.dart';
import '../../../utils/res/values_manager.dart';

class UiCard extends StatelessWidget {
  const UiCard({
    super.key,
    required this.child,
    this.margin,
  });
  final Widget? child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: margin ??
          EdgeInsetsDirectional.only(
            start: AppSizes.MARGIN_26,
            end: AppSizes.MARGIN_26,
          ),
      padding: EdgeInsets.symmetric(
        vertical: AppSizes.PADDING_20,
        horizontal: AppSizes.PADDING_20,
      ),
      decoration: AppDecoration.d1(),
      child: child,
    );
  }
}
