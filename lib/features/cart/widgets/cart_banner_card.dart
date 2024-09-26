import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class CartBannerCard extends StatelessWidget {
  const CartBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textFieldBG,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      padding: const EdgeInsets.all(AppSizes.cardRadiusMd),
      child: Row(
        children: [
          percentageOff(context),
          const Spacer(),
          const SizedBox(
            height: 50.0,
            child: VerticalDivider(
              color: AppColors.colorGrey,
              thickness: 1.0,
              width: 20,
            ),
          ),
          const Spacer(),
          promoCodeSection(context),
        ],
      ),
    );
  }

  Row percentageOff(BuildContext context) {
    return Row(
      children: [
        Text(
          "25",
          style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: AppColors.colorBlack,
                fontSize: 45,
              ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "%",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.colorBlack,
                    fontSize: 20,
                  ),
            ),
            Text(
              "off",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: AppColors.colorBlack,
                    fontSize: 20,
                  ),
            ),
          ],
        ),
      ],
    );
  }

  Column promoCodeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'use code ',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.colorBlack,
                  ),
            ),
            Text(
              'UIHUT',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.colorBlack,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        Text(
          'at checkout',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.colorBlack,
              ),
        ),
      ],
    );
  }
}
