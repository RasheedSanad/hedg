import 'dart:developer';

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
    String _PAGE_NAME = "MyApp";

    /// debugInvertOversizedImages : If there is an image that affects the program's performance, it flips the image
    // debugInvertOversizedImages = true;
    //
    final _router = ref.watch(goRouterProvider);
    Size size = MediaQuery.of(context).size;
    log("width:${size.width}", name: _PAGE_NAME);
    log("height:${size.height}", name: _PAGE_NAME);
    // TODO: resolve this problem
    /// problem fontSize in this device size:
    /// width:  411.42857142857144
    /// height: 843.4285714285714
    return ScreenUtilInit(
      designSize: Size(size.width, size.height),
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
