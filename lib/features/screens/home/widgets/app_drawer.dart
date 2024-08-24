import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sosko_app/features/screens/home/widgets/profile_drawer_card.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

import 'drawer_titles.dart';

class AppDrawer extends ConsumerWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
            top: AppSizes.appbarHeight, left: AppSizes.iconMd),
        width: 320,
        height: double.infinity,
        color: AppColors.primaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.close,
                  size: 30,
                  color: AppColors.colorWhite,
                ),
              ),
            ),
            const ProfileDrawerCard(
              imageUrl: AppImages.userAvater,
              name: "Yasin Rahib",
              emailAddress: "hellobensink@gmail.com",
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            drawerTitles(
              context,
              "Discover",
              () {},
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            drawerTitles(
              context,
              "Shop",
              () {},
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            drawerTitles(
              context,
              "History",
              () {},
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            drawerTitles(
              context,
              "Inbox",
              () {},
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            drawerTitles(
              context,
              "Order Tracking",
              () {},
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            drawerTitles(
              context,
              "Ask an Expert",
              () {},
              isBold: true,
            ),
            const SizedBox(
              height: AppSizes.appbarHeight,
            ),
            drawerTitles(
              context,
              "Settings",
              () {},
            ),
            const SizedBox(
              height: AppSizes.appbarHeight,
            ),
            drawerTitles(
              context,
              "Log Out",
              () {},
            ),
          ],
        ),
      ),
    );
  }
}
