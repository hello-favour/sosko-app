import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/home/widgets/favourite_widget.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class ProductDetails extends ConsumerWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Details",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leadingOnPressed: () => Navigator.pop(context),
        leadingIcon: Iconsax.arrow_left,
        showBackArrow: false,
        action: [
          FavouriteWidget(
            onTap: () {},
            color: AppColors.colorRed,
          ),
        ],
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizes.buttonWidth / 5),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
