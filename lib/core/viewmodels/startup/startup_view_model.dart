import 'package:basic_services/basic_services.dart';
import 'package:e_commerce/app/route_name.dart';
import 'package:e_commerce/shared/size_config.dart';
import 'package:stacked/stacked.dart';
import 'package:e_commerce/app/app.locator.dart';
import '../../../app/app.locator.dart';

class StartUpViewModel extends BaseViewModel {
  final _sizeConfig = locator<SizeConfig>();
  final _routeService = locator<NavigationService>();

  Future handleStartUpLogic(context) async {
    _sizeConfig.initSizeDeviceInfo(context);

    Future.delayed(Duration.zero, () => _routeService.clearStackAndShow(home));
  }
}
