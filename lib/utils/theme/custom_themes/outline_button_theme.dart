import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.primaryColor,
      side: const BorderSide(color: AppColors.primaryColor, width: 2),
      padding: const EdgeInsets.symmetric(vertical: 16),
      textStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );

  //DARK

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.primaryColor,
      side: const BorderSide(color: AppColors.primaryColor, width: 2),
      padding: const EdgeInsets.symmetric(vertical: 16),
      textStyle: const TextStyle(
          fontSize: 14,
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
