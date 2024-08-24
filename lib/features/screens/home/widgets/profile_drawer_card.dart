import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class ProfileDrawerCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String emailAddress;
  final bool? container;
  final VoidCallback? onTap;
  const ProfileDrawerCard({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.emailAddress,
    this.container,
    this.onTap,
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
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(emailAddress, style: Theme.of(context).textTheme.bodySmall!),
          ],
        ),
        Expanded(child: Container()),
        if (container == true)
          GestureDetector(
            onTap: onTap,
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.colorGrey,
              ),
              alignment: Alignment.center,
              child: const Icon(
                Icons.chevron_right,
                size: 25,
              ),
            ),
          ),
      ],
    );
  }
}
