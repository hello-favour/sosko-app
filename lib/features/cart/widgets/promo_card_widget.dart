import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class PromoCardWidget extends StatelessWidget {
  const PromoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.cardRadiusLg),
      decoration: BoxDecoration(
        color: AppColors.textFieldBG,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Promo Code",
                border: InputBorder.none,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                vertical: AppSizes.sm, horizontal: AppSizes.lg),
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(AppSizes.borderRadiusSm),
            ),
            child: Text(
              "Add",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontSize: 16,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
