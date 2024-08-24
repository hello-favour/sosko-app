import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class ProfileAvater extends StatelessWidget {
  const ProfileAvater({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: AppColors.colorGrey,
          backgroundImage: AssetImage(AppImages.userAvater),
        ),
        const SizedBox(height: AppSizes.spaceBtwItems),
        GestureDetector(
          onTap: () {},
          child: Text(
            "Upload Image",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor,
                ),
          ),
        ),
      ],
    );
  }
}
