import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

class NotificationButton extends StatelessWidget {
  final VoidCallback onTap;
  const NotificationButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: AppColors.colorWhite,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              blurRadius: 0.4,
              spreadRadius: 3,
              color: AppColors.colorBlack,
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const Icon(
              Iconsax.bag,
              color: AppColors.colorBlack,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: AppColors.colorRed,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
