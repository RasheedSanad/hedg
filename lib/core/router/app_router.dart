import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg/features/auth/sign_up/presentation/sign_up_page.dart';

import '../../features/auth/login/presentation/pages/login_page.dart';

class AppRouter {
  AppRouter._(); // Private constructor to prevent instantiation

  //**************************************************/
  //* Begin Page Route Builder
  // LOGIN
  static loginPageRouteBuilder(BuildContext context, GoRouterState state) =>
      LoginPage(
        key: state.pageKey,
      );
  // SIGN_UP
  static signUPPageRouteBuilder(BuildContext context, GoRouterState state) =>
      SignUpPage(
        key: state.pageKey,
      );

  //* End Page Route Builder
  //**************************************************/
}
