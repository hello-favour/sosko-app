import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.colorWhite,
        ),
      ),
    );
  }
}
