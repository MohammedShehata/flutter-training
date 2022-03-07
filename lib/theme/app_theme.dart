import 'package:flutter/material.dart';
import 'package:flutter_training/theme/app_colors.dart';

class AppTheme {
  static ThemeData light(Locale locale) {
    print("locale language is ${locale.languageCode}");

    return ThemeData(
      appBarTheme: const AppBarTheme(
        color: AppColors.blue,
      ),
      colorScheme: ColorScheme.fromSwatch(
        accentColor: AppColors.blue,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
      ),
      toggleableActiveColor: AppColors.blue,
      textTheme: TextTheme(
        headline2: TextStyle(fontSize: 16, fontFamily: bold(locale)),
        bodyText2: TextStyle(fontSize: 14.0, fontFamily: regular(locale)),
      ),
    );
  }

  static String bold(Locale locale) =>
      locale.languageCode == "ar" ? "CairoBold" : "MontserratBold";

  static String regular(Locale locale) =>
      locale.languageCode == "ar" ? "CairoRegular" : "MontserratRegular";
}
