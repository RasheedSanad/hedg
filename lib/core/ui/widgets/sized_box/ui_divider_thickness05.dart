import 'package:flutter/material.dart';


/// [UiDividerThickness05] : 
/// "Thickness05" : what's mean?
///         Thickness : stand for [Divider.thickness]
///         05: stand for 0.5 the value of [Divider.thickness]
class UiDividerThickness05 extends StatelessWidget {
  const UiDividerThickness05({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Theme.of(context).colorScheme.outline,
      thickness: 0.5,
    );
  }
}
