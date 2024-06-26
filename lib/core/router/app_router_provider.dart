import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/onboarding/controller/onboarding_controller.dart';
import 'app_router.dart';
import 'app_router_constant.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    // onboarding
    final isOnboardingCompleted = ref.read(onboardingNotifierProvider);

    return GoRouter(
      initialLocation: isOnboardingCompleted
          ? AppRouterConstant.SIGN_UP
          : AppRouterConstant.ONBOARDING,
      routes: [
        // ONBOARDING
        GoRoute(
          path: AppRouterConstant.ONBOARDING,
          name: AppRouterConstant.ONBOARDING,
          builder: (context, state) =>
              AppRouter.onboardingPageRouteBuilder(context, state),
        ),
        // * LOGIN
        // LOGIN
        GoRoute(
          path: AppRouterConstant.LOGIN,
          name: AppRouterConstant.LOGIN,
          builder: (context, state) =>
              AppRouter.loginPageRouteBuilder(context, state),
        ),
        // FORGOT_PASSWORD
        GoRoute(
          path: AppRouterConstant.FORGOT_PASSWORD,
          name: AppRouterConstant.FORGOT_PASSWORD,
          builder: (context, state) =>
              AppRouter.forgotPasswordPageRouteBuilder(context, state),
        ),
        // CREATE_PASSWORD
        GoRoute(
          path: AppRouterConstant.CREATE_PASSWORD,
          name: AppRouterConstant.CREATE_PASSWORD,
          builder: (context, state) =>
              AppRouter.createPasswordPageRouteBuilder(context, state),
        ),
        // * SIGN_UP
        // SIGN_UP
        GoRoute(
          path: AppRouterConstant.SIGN_UP,
          name: AppRouterConstant.SIGN_UP,
          builder: (context, state) =>
              AppRouter.signUPPageRouteBuilder(context, state),
        ),
        // VERIFY_SIGN_UP
        GoRoute(
          path: AppRouterConstant.VERIFY_SIGN_UP,
          name: AppRouterConstant.VERIFY_SIGN_UP,
          builder: (context, state) =>
              AppRouter.verifySignUPPageRouteBuilder(context, state),
        ),
      ],
    );
  },
);
