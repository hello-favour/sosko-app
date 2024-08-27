import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

Row homeRow(
  BuildContext context, {
  required final String title,
  required final String seeAll,
  required final VoidCallback onTap,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
      ),
      GestureDetector(
        onTap: onTap,
        child: Text(
          seeAll,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: AppColors.primaryColor,
              ),
        ),
      ),
    ],
  );
}
