import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class ProfileActionButton extends StatelessWidget {
  final VoidCallback onTap;
  const ProfileActionButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        height: 33,
        width: 33,
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(AppSizes.cardRadiusSm),
          ),
        ),
        child: const Icon(
          Icons.check,
          color: AppColors.colorWhite,
        ),
      ),
    );
  }
}
