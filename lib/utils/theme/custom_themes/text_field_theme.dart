import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

class APPTextFieldTheme {
  APPTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.colorGrey,
    contentPadding: EdgeInsets.zero,
    suffixIconColor: AppColors.colorGrey,
    labelStyle: const TextStyle().copyWith(
      fontSize: 18,
      color: AppColors.colorGrey,
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 18,
      color: AppColors.colorBlack,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: AppColors.colorGrey),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.textFieldBG,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 0,
        color: AppColors.textFieldBG,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.textFieldBG,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );

  //DARK

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: AppColors.colorGrey,
    suffixIconColor: AppColors.colorGrey,
    contentPadding: EdgeInsets.zero,
    labelStyle:
        const TextStyle().copyWith(fontSize: 18, color: AppColors.colorGrey),
    hintStyle:
        const TextStyle().copyWith(fontSize: 18, color: AppColors.colorBlack),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: AppColors.colorGrey.withOpacity(0.5)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.textFieldBG,
      ),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.textFieldBG,
      ),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.textFieldBG,
      ),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
