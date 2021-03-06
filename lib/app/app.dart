import 'package:stacked/stacked_annotations.dart';

// route name
import 'package:e_commerce/app/route_name.dart';

// services
import 'package:e_commerce/core/api/api.dart';
import 'package:basic_services/basic_services.dart';
import 'package:e_commerce/core/services/api_service.dart';
import 'package:e_commerce/core/services/theme_service.dart';
import 'package:e_commerce/core/services/utility_service.dart';
import 'package:e_commerce/core/services/localization_service.dart';

// shared
import 'package:e_commerce/shared/size_config.dart';

// views
import 'package:e_commerce/ui/views/startup/start_up_view.dart';
import 'package:e_commerce/ui/views/inside/home/home_view.dart';

@StackedApp(routes: [
  AdaptiveRoute(page: StartUpView, initial: true, path: root),
  AdaptiveRoute(page: HomeView, path: home)
], dependencies: [
  // Singleton Injections
  LazySingleton(classType: DialogService),
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: UtilityService),
  LazySingleton(classType: LocalizationService),
  LazySingleton(classType: Api),
  LazySingleton(classType: SizeConfig),
  LazySingleton(classType: ThemeService),

  // Factory Injections
  Factory(classType: ApiService)
])
class AppSetup {}
