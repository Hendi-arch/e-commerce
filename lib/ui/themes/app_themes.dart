import 'package:flutter/material.dart';
import 'components/dark_component.dart';
import 'components/light_component.dart';

ThemeData darkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    cardTheme: darkCardTheme,
    dialogTheme: darkDialogTheme,
    colorScheme: darkColorScheme,
    switchTheme: darkSwitchThemeData,
    accentColor: darkColorScheme.primary,
    primaryColor: darkColorScheme.primary,
    textTheme: appTextTheme(isLight: false),
    backgroundColor: darkColorScheme.background,
    accentTextTheme: appTextTheme(isLight: false),
    primaryTextTheme: appTextTheme(isLight: false),
    textSelectionTheme: darkTextSelectionThemeData,
    inputDecorationTheme: darkInputDecorationTheme,
    elevatedButtonTheme: darkElevatedButtonThemeData,
    scaffoldBackgroundColor: darkColorScheme.background,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    cardTheme: lightCardTheme,
    textTheme: appTextTheme(),
    dialogTheme: lightDialogTheme,
    colorScheme: lightColorScheme,
    accentTextTheme: appTextTheme(),
    primaryTextTheme: appTextTheme(),
    switchTheme: lightSwitchThemeData,
    accentColor: lightColorScheme.primary,
    primaryColor: lightColorScheme.primary,
    backgroundColor: lightColorScheme.background,
    textSelectionTheme: lightTextSelectionThemeData,
    inputDecorationTheme: lightInputDecorationTheme,
    elevatedButtonTheme: lightElevatedButtonThemeData,
    scaffoldBackgroundColor: lightColorScheme.background,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme appTextTheme({bool isLight = true}) {
  late TextTheme base;
  base = isLight ? ThemeData.light().textTheme : ThemeData.dark().textTheme;
  return base
      .copyWith(
          headline4: base.headline4!.copyWith(fontSize: 34),
          headline5: base.headline5!.copyWith(fontSize: 24),
          headline6: base.headline6!.copyWith(fontSize: 18),
          subtitle1: base.subtitle1!.copyWith(fontSize: 16),
          bodyText1: base.bodyText1!.copyWith(fontSize: 14),
          button: base.button!.copyWith(fontSize: 14),
          caption: base.caption!.copyWith(fontSize: 14, letterSpacing: -0.15),
          overline: base.overline!.copyWith(fontSize: 11))
      .apply(fontFamily: 'Metropolis');
}
