import 'package:flutter/material.dart';


class UiDivider extends StatelessWidget {
  const UiDivider({super.key,this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      color:color?? Theme.of(context).colorScheme.outline,
    );
  }
}
