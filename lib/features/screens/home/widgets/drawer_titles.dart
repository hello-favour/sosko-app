import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

Widget drawerTitles(BuildContext context, String title, VoidCallback onTap,
    {bool isBold = false}) {
  return Column(
    children: [
      if (title == "Log Out")
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.colorRed,
            ),
            child: const Icon(
              Iconsax.arrow_right,
              color: AppColors.colorWhite,
            ),
          ),
        ),
      TextButton(
        onPressed: title == "Log Out" ? null : onTap,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: isBold ? FontWeight.bold : FontWeight.w600,
                fontSize: isBold ? 20 : 14,
                color: AppColors.colorWhite,
              ),
        ),
      ),
    ],
  );
}
