import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/home/widgets/app_drawer.dart';
import 'package:sosko_app/features/screens/home/widgets/home_banner.dart';
import 'package:sosko_app/features/screens/home/widgets/notification_button.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      key: scaffoldKey,
      appBar: MyAppBar(
        title: Text(
          "SOSKO",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        leadingOnPressed: () {
          scaffoldKey.currentState?.openDrawer();
        },
        leadingIcon: Iconsax.category,
        showBackArrow: false,
        action: [
          NotificationButton(
            onTap: () {},
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.buttonWidth / 5),
          child: ListView(
            children: [
              const SizedBox(height: AppSizes.spaceBtwItems),
              const HomeBanner(),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    6,
                    (index) => Container(
                      margin: const EdgeInsets.all(AppSizes.sm),
                      width: screenwidth * .2,
                      padding: const EdgeInsets.all(AppSizes.xs),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius:
                            BorderRadius.circular(AppSizes.buttonRadius),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "All",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.colorWhite,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
