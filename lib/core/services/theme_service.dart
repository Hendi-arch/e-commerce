import 'package:flutter/material.dart';
import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/core/constant/constant.dart';
import 'package:e_commerce/ui/themes/app_themes.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:basic_services/basic_services.dart';

class ThemeService {
  // services
  final SharedPreferencesService _sharedPreferencesService = locator<SharedPreferencesService>();

  RxValue<bool> valueSwitch = RxValue<bool>(true);

  RxValue<ThemeData?> appTheme = RxValue<ThemeData?>(xuluLightTheme());

  void setAppTheme(bool param) {
    if (param) {
      if (!valueSwitch.value) {
        appTheme.value = xuluLightTheme();
        valueSwitch.value = true;
      }
    } else {
      if (valueSwitch.value) {
        appTheme.value = xuluDarkTheme();
        valueSwitch.value = false;
      }
    }

    _sharedPreferencesService.saveToDisk(themeModeKey, param); // save to memory
  }

  Future handleThemeStartUp() async {
    final _themeMode = await _sharedPreferencesService.getFromDisk(themeModeKey) ?? true;
    setAppTheme(_themeMode);
  }
}
