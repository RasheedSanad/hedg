import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hedg/core/router/app_router_provider.dart';

import '../utils/theme/theme_manager.dart';

class MyApp extends ConsumerWidget {
  static MyApp? _instance;
  const MyApp._internal();

  factory MyApp() => _instance ?? const MyApp._internal();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// debugInvertOversizedImages : If there is an image that affects the program's performance, it flips the image
    // debugInvertOversizedImages = true;
    //
    final _router = ref.watch(goRouterProvider);

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeManager.theme(),
          routerConfig: _router,
        );
      },
    );
  }
}
