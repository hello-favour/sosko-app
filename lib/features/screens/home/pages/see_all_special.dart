import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/home/widgets/special_product.dart';
import 'package:sosko_app/provider/bottom_sheet_provider.dart';
import 'package:sosko_app/utils/constants/color_generation.dart';
import 'package:sosko_app/features/screens/favorites/widgets/product.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class SeeAllSpecial extends ConsumerWidget {
  const SeeAllSpecial({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Special For You",
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
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.buttonWidth / 5),
          child: products.isEmpty
              ? Center(
                  child: Text(
                    "No items in your favorites list.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
              : GridView.builder(
                  padding:
                      const EdgeInsets.only(top: AppSizes.spaceBtwInputFields),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 20.0,
                    childAspectRatio: 0.6,
                  ),
                  itemCount: specialProduct.length,
                  itemBuilder: (context, index) {
                    final product = specialProduct[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 180.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(12.0),
                            image: DecorationImage(
                              image: AssetImage(product['image'].toString()),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),
                        Text(
                          product['name'].toString(),
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                        ),
                        const SizedBox(height: AppSizes.spaceBtwItems),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: getRandomBackgroundColor(),
                                borderRadius: BorderRadius.circular(
                                    AppSizes.buttonRadius),
                              ),
                              child: Text(
                                product['description'].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      color: getRandomTextColor(),
                                    ),
                              ),
                            ),
                            Flexible(
                              child: Text(
                                '\$${product['price']}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(color: AppColors.colorBlack),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
        ),
      ),
    );
  }
}
