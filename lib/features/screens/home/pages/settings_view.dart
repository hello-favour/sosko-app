import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/home/widgets/profile_drawer_card.dart';
import 'package:sosko_app/features/screens/home/widgets/settings_row.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/utils/theme/theme_notifier.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class SettingsView extends ConsumerWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentThemeMode = ref.watch(themeProvider);
    final isDarkMode = currentThemeMode == AppThemeMode.dark;
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leadingOnPressed: () {},
        leadingIcon: Iconsax.arrow_left,
        showBackArrow: false,
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.buttonWidth / 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSizes.appbarHeight / 2,
              ),
              Text(
                "Account",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.colorGrey,
                    ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              ProfileDrawerCard(
                imageUrl: AppImages.userAvater,
                name: "Yasin Rahib",
                emailAddress: "hellobensink@gmail.com",
                container: true,
                onTap: () => Navigator.pushNamed(context, "/profileView"),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              Text(
                "Settings",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.colorGrey,
                    ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              SettingsRow(
                iconColor: AppColors.colorRed,
                icon: Iconsax.global,
                bgColor: AppColors.languageBG,
                title: 'Language',
                onTap: () => Navigator.pushNamed(context, "/languageView"),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SettingsRow(
                iconColor: AppColors.colorPurple,
                icon: Iconsax.notification,
                bgColor: AppColors.notificationBG,
                title: 'Notification',
                onTap: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SettingsRow(
                isDarkMode: isDarkMode,
                onSwitchChanged: (value) {
                  final themeNotifier = ref.read(themeProvider.notifier);
                  themeNotifier
                      .setTheme(value ? AppThemeMode.dark : AppThemeMode.light);
                },
                iconColor: AppColors.colorBlack,
                icon: Iconsax.safe_home,
                bgColor: AppColors.colorGrey,
                title: 'Dark Mode',
                onTap: () {},
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              SettingsRow(
                iconColor: AppColors.lightBlue,
                icon: Iconsax.info_circle,
                bgColor: AppColors.helpBG,
                title: 'Help',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
