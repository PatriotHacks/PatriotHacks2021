import 'package:get_it/get_it.dart';
import 'package:patriot_hacks/services/navigation_service.dart';
import 'package:patriot_hacks/utils/holder.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ColorHolder());
  locator.registerLazySingleton(() => ImageHolder());
  locator.registerLazySingleton(() => FontHolder());
}