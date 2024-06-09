import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hedg/core/app/injection_container.dart';

import 'core/app/my_app.dart';

void main() async {
  await init();

  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

Future<void> init() async {
  WidgetsFlutterBinding.ensureInitialized();
  // injection
  await setupLocator();

  // to use portraiUp only
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
