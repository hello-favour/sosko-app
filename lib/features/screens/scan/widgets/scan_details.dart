import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class ScanDetails extends StatelessWidget {
  const ScanDetails({
    super.key,
    required this.screenHeight,
    required this.screenwidth,
  });

  final double screenHeight;
  final double screenwidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: AppSizes.spaceBtwItems),
        Text(
          "Scan Result",
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
              child: Container(
                height: screenHeight * .1,
                width: screenwidth * .2,
                color: AppColors.textFieldBG,
                child: Image.asset(
                  AppImages.product36,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: AppSizes.gridViewSpacing),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amazon",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                ),
                Text(
                  "Alexa Series 6",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: AppColors.helpBG,
                    borderRadius: BorderRadius.circular(AppSizes.cardRadiusSm),
                  ),
                  child: const Text(
                    "Technology",
                    style: TextStyle(
                      color: AppColors.colorPurple,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              "\$150",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
            ),
          ],
        )
      ],
    );
  }
}
