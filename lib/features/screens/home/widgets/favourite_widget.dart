import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

class FavouriteWidget extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  const FavouriteWidget({
    super.key,
    required this.onTap,
    required this.color,
  });

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
              blurRadius: 0.2,
              spreadRadius: 1,
              color: AppColors.colorBlack,
            ),
          ],
        ),
        child: Icon(
          Icons.favorite,
          color: color,
        ),
      ),
    );
  }
}
