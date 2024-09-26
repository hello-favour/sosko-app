import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/cart/widgets/cart_banner_card.dart';
import 'package:sosko_app/features/cart/widgets/item_widget.dart';
import 'package:sosko_app/features/cart/widgets/promo_card_widget.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';
import 'package:sosko_app/widgets/app_button.dart';

class UserCartPage extends ConsumerWidget {
  const UserCartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MyAppBar(
        title: Column(
          children: [
            Text(
              "Your Cart",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              "2 Items",
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        leadingOnPressed: () => Navigator.pop(context),
        leadingIcon: Iconsax.arrow_left,
        showBackArrow: false,
      ),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.buttonWidth / 5),
          child: Column(
            children: [
              const SizedBox(height: AppSizes.appbarHeight),
              const CartBannerCard(),
              const SizedBox(height: AppSizes.defaultSpace),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: ItemWidget(),
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.defaultSpace),
              const Divider(
                color: AppColors.colorGrey,
                thickness: 1.0,
              ),
              const SizedBox(height: AppSizes.defaultSpace),
              const PromoCardWidget(),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Discount:",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.colorBlack,
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        "\$0.00",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.colorBlack,
                              fontSize: 20,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Total:",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.colorBlack,
                              fontSize: 20,
                            ),
                      ),
                      Text(
                        "\$80.00",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.colorBlack,
                              fontSize: 20,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  onTap: () {},
                  title: "Checkout",
                ),
              ),
              const SizedBox(height: AppSizes.defaultSpace),
            ],
          ),
        ),
      ),
    );
  }
}
