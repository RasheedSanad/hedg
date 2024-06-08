import 'package:flutter/material.dart';

class UiAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text? title;
  final Widget? leading;
  final List<Widget>? action;

  /// you can add more fields that meet your needs

  const UiAppBar({
    super.key,
    this.title,
    this.leading,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      actions: action,
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
