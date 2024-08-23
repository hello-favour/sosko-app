import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:sosko_app/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:sosko_app/utils/theme/custom_themes/text_field_theme.dart';
import 'package:sosko_app/utils/theme/theme_notifier.dart';

ThemeData getThemeData(AppThemeMode themeMode) {
  switch (themeMode) {
    case AppThemeMode.dark:
      return ThemeData(
        appBarTheme: AppbarTheme.darkAppbarTheme,
        scaffoldBackgroundColor: AppColors.colorBlack,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.colorBlack,
          elevation: 10,
        ),
        brightness: Brightness.dark,
        inputDecorationTheme: APPTextFieldTheme.lightInputDecorationTheme,
        elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
        iconTheme: const IconThemeData(
          color: AppColors.colorBlack,
        ),
        iconButtonTheme: const IconButtonThemeData(),
        // Add other dark theme properties here
      );
    case AppThemeMode.light:
      return ThemeData(
        appBarTheme: AppbarTheme.lightAppbarTheme,
        scaffoldBackgroundColor: AppColors.colorWhite,
        brightness: Brightness.light,
        inputDecorationTheme: APPTextFieldTheme.darkInputDecorationTheme,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.colorWhite,
        ),
        elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
        iconTheme: const IconThemeData(
          color: AppColors.colorWhite,
        ),
        iconButtonTheme: const IconButtonThemeData(),
        // Add other light theme properties here
      );
    case AppThemeMode.system:
    default:
      return ThemeData(
        appBarTheme: AppbarTheme.lightAppbarTheme,
        inputDecorationTheme: APPTextFieldTheme.lightInputDecorationTheme,
        brightness: Brightness.light,
        // Add other properties here
      );
  }
}
