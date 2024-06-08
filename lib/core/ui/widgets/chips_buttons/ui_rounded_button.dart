import 'package:flutter/material.dart';
import 'package:hedg/core/utils/res/app_shadow.dart';

// import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class UiRoundedButton extends StatefulWidget {
  UiRoundedButton({
    super.key,
    required this.child,
    this.backgroundColor,
    this.onTap,
  });
  final Color? backgroundColor;
  final Widget? child;
  final Function()? onTap;

  @override
  State<UiRoundedButton> createState() => _UiRoundedButtonState();
}

class _UiRoundedButtonState extends State<UiRoundedButton>
    with SingleTickerProviderStateMixin {
  double? _scale;
  late AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: _tapDown,
      onTapUp: _tapUp,
      child: Transform.scale(
        scale: _scale,
        child: Container(
          // padding: EdgeInsets.all(AppSizes.PADDING_10),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(AppSizes.RADIUS_10),
            color: widget.backgroundColor ?? theme.colorScheme.onPrimary,
            // boxShadow: AppShadow.shadow.s4(context),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: widget.child,
        ),
      ),
    );
  }

  void _tapDown(TapDownDetails details) {
    _controller.forward();
  }

  void _tapUp(TapUpDetails details) {
    _controller.reverse();
  }
}
