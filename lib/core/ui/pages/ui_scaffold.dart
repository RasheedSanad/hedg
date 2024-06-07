import 'package:flutter/material.dart';

class UiScaffold extends StatelessWidget {
  const UiScaffold({
    super.key,
    required this.body,
    this.bottomNavigationBar,
    this.extendBody = false,
    this.backgroundColor,
    this.floatingActionButton,
    this.appBar,
    this.statusBarColor,
    this.bottomSheet,
  });
  final Widget? body;
  final Widget? bottomNavigationBar;
  final bool extendBody;
  final Color? backgroundColor;
  final Color? statusBarColor;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final Widget? bottomSheet;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: statusBarColor,
      child: SafeArea(
        // left: false,
        // right: false,
        // bottom: false,
        child: Scaffold(
          backgroundColor: backgroundColor,
          extendBody: extendBody,
          bottomNavigationBar: bottomNavigationBar,
          appBar: appBar,
          body: body,
          bottomSheet: bottomSheet,
          floatingActionButton: floatingActionButton,
        ),
      ),
    );
  }
}
