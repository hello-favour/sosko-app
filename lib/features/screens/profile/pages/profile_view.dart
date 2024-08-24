import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/profile/widgets/profile_action_button.dart';
import 'package:sosko_app/features/screens/profile/widgets/profile_avater.dart';
import 'package:sosko_app/features/screens/profile/widgets/profile_row.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class ProfileView extends ConsumerWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Profile",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leadingOnPressed: () {},
        leadingIcon: Iconsax.arrow_left,
        showBackArrow: false,
        action: [
          ProfileActionButton(
            onTap: () {},
          ),
        ],
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
                "Photo",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.colorGrey,
                    ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              const Center(
                child: ProfileAvater(),
              ),
              const SizedBox(height: AppSizes.appbarHeight),
              profileRow(context, title: "Name", text: "Yasin Rahib"),
              const SizedBox(height: AppSizes.spaceBtwItems * 3),
              profileRow(context,
                  title: "Email", text: "hellobesink@gmail.com"),
              const SizedBox(height: AppSizes.spaceBtwItems * 3),
              profileRow(context, title: "Phone", text: "+880-1704-889-390"),
              const SizedBox(height: AppSizes.spaceBtwItems * 3),
              profileRow(context,
                  title: "Address",
                  text: "Housing estate, lang 9 of peter odili road"),
            ],
          ),
        ),
      ),
    );
  }
}
