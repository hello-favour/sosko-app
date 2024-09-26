import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSizes.borderRadiusSm),
      decoration: BoxDecoration(
        color: AppColors.textFieldBG,
        borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSizes.defaultSpace),
            decoration: BoxDecoration(
              color: AppColors.colorGrey.withOpacity(0.5),
              borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
            ),
            child: Image.asset(
              AppImages.product12,
              fit: BoxFit.fill,
              height: 50,
              width: 50,
            ),
          ),
          const SizedBox(width: AppSizes.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "PS5 Wireless",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.colorBlack,
                        fontSize: 20,
                      ),
                ),
                Text(
                  "Joystik",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: AppColors.colorBlack,
                        fontSize: 20,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$20.00",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.primaryColor,
                            fontSize: 20,
                          ),
                    ),
                    Text(
                      "1x",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: AppColors.colorDarkGrey,
                            fontSize: 20,
                          ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
