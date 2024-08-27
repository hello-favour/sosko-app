import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/scan/widgets/scan_details.dart';
import 'package:sosko_app/provider/bottom_sheet_provider.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class ScanView extends ConsumerWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.colorDarkGrey,
      appBar: MyAppBar(
        title: Text(
          "Scan",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leadingOnPressed: () {
          ref.read(bottomNavIndexProvider.notifier).state = 0;
          Navigator.pushNamed(context, "/bottomSheetBar");
        },
        leadingIcon: Iconsax.arrow_left,
        showBackArrow: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AppImages.product36),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.buttonWidth / 5),
              height: screenHeight * 0.2,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.colorWhite,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.lg),
                  topRight: Radius.circular(AppSizes.lg),
                ),
              ),
              child: ScanDetails(
                screenHeight: screenHeight,
                screenwidth: screenwidth,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
