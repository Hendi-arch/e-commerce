// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:basic_services/basic_services.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../core/api/api.dart';
import '../core/services/api_service.dart';
import '../core/services/localization_service.dart';
import '../core/services/theme_service.dart';
import '../core/services/utility_service.dart';
import '../shared/size_config.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => UtilityService());
  locator.registerLazySingleton(() => LocalizationService());
  locator.registerLazySingleton(() => Api());
  locator.registerLazySingleton(() => SizeConfig());
  locator.registerLazySingleton(() => ThemeService());
  locator.registerFactory(() => ApiService());
}
