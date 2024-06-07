import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app_router.dart';
import 'app_router_constant.dart';

final goRouterProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: AppRouterConstant.LOGIN,
      routes: [
        // * LOGIN
        GoRoute(
          path: AppRouterConstant.LOGIN,
          name: AppRouterConstant.LOGIN,
          builder: (context, state) =>
              AppRouter.loginPageRouteBuilder(context, state),
        ),
      ],
    );
  },
);
