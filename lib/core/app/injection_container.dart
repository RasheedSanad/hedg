import 'package:get_it/get_it.dart';
import 'package:hedg/core/data/local/app_local_data_simple.dart';
import 'package:shared_preferences/shared_preferences.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  // ! Core
  // local data
  locator.registerLazySingleton<AppLocalDataSimple>(
      () => AppLocalDataSimpleImpl(locator()));
  // third party packages
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  //
  locator.registerLazySingleton(() => sharedPreferences);
}
