import 'package:flutter/material.dart';
import 'package:hedg/core/ui/pages/ui_scaffold.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    /// w : 375
    /// w-w-padding: 323
    /// padding: 52
    /// p-one-side: 26

    return UiScaffold(
      body: Center(
        child: Text("Login page"),
      ),
    );
  }
}
