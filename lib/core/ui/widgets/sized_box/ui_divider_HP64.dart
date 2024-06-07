import 'package:flutter/material.dart';
import '../../../utils/res/values_manager.dart';

class UiDividerHP64 extends StatelessWidget {
  const UiDividerHP64({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.PADDING_32),
      child: Divider(
        color: Theme.of(context).colorScheme.outline,
        thickness: 0.5,
      ),
    );
  }
}
