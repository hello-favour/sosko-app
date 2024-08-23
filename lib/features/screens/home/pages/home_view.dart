import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/home/widgets/notification_button.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "SOSKO",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: AppColors.primaryColor,
                fontWeight: FontWeight.bold,
              ),
        ),
        leadingOnPressed: () {},
        leadingIcon: Iconsax.category,
        showBackArrow: false,
        action: [
          NotificationButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
