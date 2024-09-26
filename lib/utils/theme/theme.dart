import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/theme/custom_themes/outline_button_theme.dart';
import 'custom_themes/appbar_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  //LIGHT THEME
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.colorWhite,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: APPTextFieldTheme.lightInputDecorationTheme,
    appBarTheme: AppbarTheme.lightAppbarTheme,
  );

  //DARK THEME
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "Poppins",
    primaryColor: AppColors.primaryColor,
    chipTheme: AppChipTheme.lightChipTheme,
    scaffoldBackgroundColor: AppColors.colorWhite,
    textTheme: AppTextTheme.lightTextTheme,
    outlinedButtonTheme: AppOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: APPTextFieldTheme.darkInputDecorationTheme,
    appBarTheme: AppbarTheme.darkAppbarTheme,
  );
}
