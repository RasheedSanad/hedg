import 'package:flutter/material.dart';


class UiVerticalDivider extends StatelessWidget {
  const UiVerticalDivider({super.key,this.color});
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color:color?? Theme.of(context).colorScheme.outline,
    );
  }
}
