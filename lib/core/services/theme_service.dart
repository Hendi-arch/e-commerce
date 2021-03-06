import 'package:flutter/material.dart';
import 'package:e_commerce/app/app.locator.dart';
import 'package:e_commerce/core/constant/constant.dart';
import 'package:e_commerce/ui/themes/app_themes.dart';
import 'package:basic_services/basic_services.dart';
import 'package:stacked/stacked.dart';

class ThemeService {
  // services
  final SharedPreferencesService _sharedPreferencesService = locator<SharedPreferencesService>();

  ReactiveValue<bool> valueSwitch = ReactiveValue<bool>(true);

  ReactiveValue<ThemeData?> appTheme = ReactiveValue<ThemeData?>(darkTheme());

  void setAppTheme(bool param) {
    if (param) {
      if (!valueSwitch.value) {
        appTheme.value = lightTheme();
        valueSwitch.value = true;
      }
    } else {
      if (valueSwitch.value) {
        appTheme.value = darkTheme();
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
