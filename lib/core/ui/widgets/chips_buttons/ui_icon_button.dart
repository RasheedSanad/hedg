import 'package:flutter/material.dart';

class UiIconButton extends StatelessWidget {
  const UiIconButton({
    super.key,
    required this.child,
    required this.onTap,
    this.backgroundColor,
  });
  final Function()? onTap;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Align(
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
