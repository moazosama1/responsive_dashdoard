import 'package:flutter/material.dart';
import 'package:responsive_ui_final_project/core/utils/color_app.dart';

class ThemeApp {
  final themeLight = ThemeData(
    useMaterial3: true,
    iconTheme: IconThemeData(
      color: ColorApp.whiteTextColor,
    ),
    fontFamily: "Montserrat",
    scaffoldBackgroundColor: ColorApp.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: ColorApp.backgroundColor,
      primary: ColorApp.primaryColor,
      onPrimary: ColorApp.whiteTextColor,
      surface: ColorApp.whiteTextColor,
      outline: ColorApp.greyTextColor,
      tertiary: ColorApp.deepCyanBlueTextColor,
    ),
    textTheme: TextTheme(
      headlineLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: ColorApp.deepCyanBlueTextColor,
      ),
      headlineMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: ColorApp.deepCyanBlueTextColor,
      ),
      headlineSmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: ColorApp.deepCyanBlueTextColor,
      ),
      titleLarge: TextStyle(
        fontSize: 18,
        color: ColorApp.primaryColor,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        color: ColorApp.greyTextColor,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        color: ColorApp.greyTextColor,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: ColorApp.deepCyanBlueTextColor,
      ),
      labelMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: ColorApp.deepCyanBlueTextColor,
      ),
    ),
  );
}
