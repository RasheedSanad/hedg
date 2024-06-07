import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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

  // to use portraiUp only
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}
