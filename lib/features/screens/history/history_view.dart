import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/history/widgets/product.dart';
import 'package:sosko_app/provider/bottom_sheet_provider.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class HistoryView extends ConsumerWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "History",
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
          child: historyProducts.isEmpty
              ? Center(
                  child: Text(
                    "No items in your history list.",
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
                  itemCount: historyProducts.length,
                  itemBuilder: (context, index) {
                    final product = historyProducts[index];
                    return Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 180.0,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                  image: AssetImage(product['image']
                                      .toString()), // Corrected usage
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSizes.spaceBtwItems),
                            Text(
                              product['name'].toString(),
                              style: Theme.of(context).textTheme.bodyLarge!,
                            ),
                            const SizedBox(height: AppSizes.spaceBtwItems),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    '\$${product['price']}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  product['description'].toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall
                                      ?.copyWith(
                                        color: product['color'] as Color?,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          top: -5,
                          right: 0,
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: const BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.cloud_download),
                          ),
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
