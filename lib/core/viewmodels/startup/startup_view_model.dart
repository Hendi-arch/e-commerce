import 'package:e_commerce/shared/size_config.dart';
import 'package:stacked/stacked.dart';
import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/core/services/localization_service.dart';
import '../../../app/app.locator.dart';

class StartUpViewModel extends BaseViewModel {
  final SizeConfig? _sizeConfig = locator<SizeConfig>();
  final LocalizationService? _localizationService = locator<LocalizationService>();

  Future handleStartUpLogic(context) async {
    _sizeConfig!.initSizeDeviceInfo(context);
    await _localizationService!.updateLocale(isStartUp: true);
  }
}
