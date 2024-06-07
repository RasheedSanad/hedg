import 'package:flutter/material.dart';
import '../../../utils/res/values_manager.dart';

/// [UiDividerThickness05] :
/// "Thickness05" : what's mean?
///         Thickness : stand for [Divider.thickness]
///         05: stand for 0.5 the value of [Divider.thickness]
class UiDividerThickness05Endindent50 extends StatelessWidget {
  const UiDividerThickness05Endindent50({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).colorScheme.outline,
      thickness: 0.5,
      endIndent: AppSizes.WIDTH_50,
    );
  }
}
