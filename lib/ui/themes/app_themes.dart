import 'app_colors.dart';
import 'package:flutter/material.dart';

ThemeData xuluDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base;
}

ThemeData xuluLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      cardTheme: _lightCardTheme,
      textTheme: _lightTextTheme(),
      colorScheme: _lightColorScheme,
      iconTheme: _lightIconThemeData,
      primaryIconTheme: _lightIconThemeData,
      accentTextTheme: _lightTextTheme(),
      primaryTextTheme: _lightTextTheme(),
      accentColor: _lightColorScheme.primary,
      primaryColor: _lightColorScheme.primary,
      backgroundColor: _lightColorScheme.background,
      textSelectionTheme: _lightTextSelectionThemeData,
      inputDecorationTheme: _lightInputDecorationTheme,
      elevatedButtonTheme: _lightElevatedButtonThemeData,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: _lightColorScheme.background,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(21))),
        foregroundColor: _lightColorScheme.secondary,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: kCircleColor,
        selectedLabelStyle: _lightTextTheme().caption,
        unselectedLabelStyle: _lightTextTheme().caption,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: _lightColorScheme.background,
      ),
    switchTheme: SwitchThemeData(
      trackColor: MaterialStateProperty.all(_lightColorScheme.background)
    ),
  );
}

final ColorScheme _lightColorScheme = ColorScheme.light(
  primary: kBackground,
  surface: kBackground,
  secondary: kSecondary,
  background: kBackground,
  brightness: Brightness.light,
);

final IconThemeData _lightIconThemeData = IconThemeData(color: kText1Color);

final TextSelectionThemeData _lightTextSelectionThemeData =
    TextSelectionThemeData(cursorColor: kSearchColor, selectionHandleColor: kSearchColor, selectionColor: kSearchColor.withOpacity(0.4));

final InputDecorationTheme _lightInputDecorationTheme = InputDecorationTheme(
    hintStyle: _lightTextTheme().bodyText2,
    contentPadding: const EdgeInsets.all(16),
    border: UnderlineInputBorder(borderSide: BorderSide(color: kSearchColor)),
    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: kSearchColor)),
    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: kSearchColor)),
    errorBorder: UnderlineInputBorder(borderSide: BorderSide(color: kSearchColor)),
    focusedErrorBorder: UnderlineInputBorder(borderSide: BorderSide(color: kSearchColor)));

final CardTheme _lightCardTheme = CardTheme(
    elevation: 5.0,
    color: kCardColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
    margin: const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 17.65, right: 25.85));

final ElevatedButtonThemeData _lightElevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
        elevation: MaterialStateProperty.all<double>(0.0),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        shadowColor: MaterialStateProperty.all<Color>(kSecondary),
        backgroundColor: MaterialStateProperty.all<Color>(kSecondary),
        side: MaterialStateProperty.all<BorderSide>(BorderSide(color: kSecondary)),
        textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 14, inherit: false, color: kText1Color)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(86.0)))));

TextTheme _lightTextTheme() {
  final base = ThemeData.light().textTheme;
  return base
      .copyWith(
          headline1: base.headline1!.copyWith(fontSize: 96),
          headline2: base.headline2!.copyWith(fontSize: 60),
          headline3: base.headline3!.copyWith(fontSize: 48),
          headline4: base.headline4!.copyWith(fontSize: 34),
          headline5: base.headline5!.copyWith(fontSize: 24),
          headline6: base.headline6!.copyWith(fontSize: 20),
          subtitle1: base.subtitle1!.copyWith(fontSize: 16),
          subtitle2: base.subtitle2!.copyWith(fontSize: 14),
          bodyText1: base.bodyText1!.copyWith(fontSize: 16),
          bodyText2: base.bodyText2!.copyWith(fontSize: 14),
          button: base.button!.copyWith(fontSize: 14),
          caption: base.caption!.copyWith(fontSize: 12),
          overline: base.overline!.copyWith(fontSize: 10, letterSpacing: -0.3))
      .apply(fontFamily: 'Lato', displayColor: kText1Color, bodyColor: kText1Color);
}
