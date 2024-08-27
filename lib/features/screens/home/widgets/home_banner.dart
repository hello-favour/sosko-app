import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSizes.md),
      decoration: BoxDecoration(
        color: AppColors.textFieldBG,
        borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "-Skincare products",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.colorPurple,
                    ),
              ),
              Text(
                "50% off on \nevery skincare \nproducts",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
              ),
              const SizedBox(height: AppSizes.sm),
              Container(
                padding: const EdgeInsets.all(AppSizes.sm),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(AppSizes.cardRadiusSm),
                ),
                child: const Text(
                  "Shop Now",
                  style: TextStyle(
                    color: AppColors.colorWhite,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: AppSizes.defaultSpace),
          Flexible(
            fit: FlexFit.loose,
            child: SizedBox(
              height: 150,
              width: double.infinity,
              child: Image.asset(
                AppImages.product30,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
