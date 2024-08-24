import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class ProfileDrawerCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String emailAddress;
  const ProfileDrawerCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.emailAddress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.colorGrey,
          backgroundImage: AssetImage(imageUrl),
        ),
        const SizedBox(
          width: AppSizes.iconLg,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Text(emailAddress, style: Theme.of(context).textTheme.bodyMedium!),
          ],
        ),
      ],
    );
  }
}
