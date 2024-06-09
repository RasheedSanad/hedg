import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../app/injection_container.dart' as di;

// controller
// final appLocalDataSimpleProvider = Provider.autoDispose<AppLocalDataSimple>(
//     (ref) => di.locator<AppLocalDataSimple>());

/// Storage service interface
abstract class AppLocalDataSimple {
  // void init();

  // bool get hasInitialized;

  Future<bool> remove(String key);

  Future<Object?> get(String key);

  Future<bool> setString(String key, String data);
  Future<bool> setInt(String key, int data);
  Future<bool> setBool(String key, bool data);

  Future<void> clear();

  Future<bool> has(String key);
}

class AppLocalDataSimpleImpl implements AppLocalDataSimple {
  final SharedPreferences? sharedPreferences;

  AppLocalDataSimpleImpl(this.sharedPreferences);

  // final Completer<SharedPreferences> initCompleter =
  //     Completer<SharedPreferences>();

  // @override
  // void init() {
  //   initCompleter.complete(SharedPreferences.getInstance());
  // }

  // @override
  // bool get hasInitialized => sharedPreferences != null;

  @override
  Future<Object?> get(String key) async {
    // sharedPreferences = await initCompleter.future;
    return sharedPreferences!.get(key);
  }

  @override
  Future<void> clear() async {
    // sharedPreferences = await initCompleter.future;
    await sharedPreferences!.clear();
  }

  @override
  Future<bool> has(String key) async {
    // sharedPreferences = await initCompleter.future;
    return sharedPreferences?.containsKey(key) ?? false;
  }

  @override
  Future<bool> remove(String key) async {
    // sharedPreferences = await initCompleter.future;
    return await sharedPreferences!.remove(key);
  }

  @override
  Future<bool> setString(String key, data) async {
    // sharedPreferences = await initCompleter.future;
    return await sharedPreferences!.setString(key, data.toString());
  }

  @override
  Future<bool> setInt(String key, int data) async {
    // sharedPreferences = await initCompleter.future;
    return await sharedPreferences!.setInt(key, data);
  }

  @override
  Future<bool> setBool(String key, bool data) async {
    // sharedPreferences = await initCompleter.future;
    return await sharedPreferences!.setBool(key, data);
  }
}
