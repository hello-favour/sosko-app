import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

class OutlineAppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const OutlineAppButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
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
