import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

Row profileRow(
  BuildContext context, {
  required String title,
  required String text,
}) {
  return Row(
    children: [
      Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              fontWeight: FontWeight.w600,
              color: AppColors.colorGrey,
            ),
      ),
      const SizedBox(width: AppSizes.buttonWidth / 2),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              text,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.colorGrey,
                  ),
              overflow: TextOverflow.ellipsis,
            ),
            const Divider(),
          ],
        ),
      ),
    ],
  );
}
