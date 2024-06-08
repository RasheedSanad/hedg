import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hedg/features/auth/login/presentation/pages/create_password_page.dart';
import 'package:hedg/features/auth/login/presentation/pages/forgot_password_page.dart';
import 'package:hedg/features/auth/sign_up/presentation/sign_up_page.dart';
import 'package:hedg/features/auth/sign_up/presentation/verify_sign_up_page.dart';

import '../../features/auth/login/presentation/pages/login_page.dart';

class AppRouter {
  AppRouter._(); // Private constructor to prevent instantiation

  //**************************************************/
  //* Begin Page Route Builder
  // * LOGIN
  // LOGIN
  static loginPageRouteBuilder(BuildContext context, GoRouterState state) =>
      LoginPage(
        key: state.pageKey,
      );
  // FORGOT_PASSWORD
  static forgotPasswordPageRouteBuilder(
          BuildContext context, GoRouterState state) =>
      ForgotPasswordPage(
        key: state.pageKey,
      );
  // CREATE_PASSWORD
  static createPasswordPageRouteBuilder(
          BuildContext context, GoRouterState state) =>
      CreatePasswordPage(
        key: state.pageKey,
      );
  // * SIGN_UP
  // SIGN_UP
  static signUPPageRouteBuilder(BuildContext context, GoRouterState state) =>
      SignUpPage(
        key: state.pageKey,
      );
  // VERIFY_SIGN_UP
  static verifySignUPPageRouteBuilder(
          BuildContext context, GoRouterState state) =>
      VerifySignUpPage(
        key: state.pageKey,
      );

  //* End Page Route Builder
  //**************************************************/
}
