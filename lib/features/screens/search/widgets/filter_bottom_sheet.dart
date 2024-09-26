import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_button.dart';
import 'package:sosko_app/widgets/outline_app_button.dart';

class FilterBottomSheet extends StatelessWidget {
  const FilterBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.buttonWidth / 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSizes.spaceBtwItems),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Scan Result",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: AppColors.colorBlack,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Wrap(
            spacing: AppSizes.sm,
            runSpacing: AppSizes.sm,
            children: List.generate(
              6,
              (index) => Container(
                width: screenwidth * .2,
                padding: const EdgeInsets.all(AppSizes.xs),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
                ),
                alignment: Alignment.center,
                child: Text(
                  "SPorts",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.colorWhite,
                      ),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          Text(
            "Price Range",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
          ),
          //RANGE INDICATOR WITH CHART HERE
          const SizedBox(height: AppSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: AppButton(
              onTap: () {},
              title: "Apply",
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: OutlineAppButton(
              onTap: () {},
              title: "Cancel",
            ),
          ),
        ],
      ),
    );
  }
}
