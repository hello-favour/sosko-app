import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/favorites/widgets/product.dart';
import 'package:sosko_app/features/screens/home/widgets/app_drawer.dart';
import 'package:sosko_app/features/screens/home/widgets/home_banner.dart';
import 'package:sosko_app/features/screens/home/widgets/home_row.dart';
import 'package:sosko_app/features/screens/home/widgets/notification_button.dart';
import 'package:sosko_app/features/screens/home/widgets/popular_products.dart';
import 'package:sosko_app/features/screens/home/widgets/special_product.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/color_generation.dart';
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
              const SizedBox(height: AppSizes.spaceBtwInputFields),
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
                        "SPorts",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.colorWhite,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              homeRow(
                context,
                title: "Special For You",
                seeAll: "See all",
                onTap: () => Navigator.pushNamed(context, "/seeAllSpecial"),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                height: 300.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.only(top: AppSizes.spaceBtwInputFields),
                  itemCount: specialProduct.length,
                  itemBuilder: (context, index) {
                    final product = specialProduct[index];
                    return Container(
                      width: 200.0,
                      margin: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 11 / 9,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                  image:
                                      AssetImage(product['image'].toString()),
                                  fit: BoxFit.contain,
                                ),
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
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              homeRow(
                context,
                title: "Popular Products",
                seeAll: "See all",
                onTap: () => Navigator.pushNamed(context, "/seeAllPopular"),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                height: 300.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.only(top: AppSizes.spaceBtwInputFields),
                  itemCount: popularProducts.length,
                  itemBuilder: (context, index) {
                    final product = popularProducts[index];
                    return Container(
                      width: 200.0,
                      margin: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 11 / 9,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                  image:
                                      AssetImage(product['image'].toString()),
                                  fit: BoxFit.contain,
                                ),
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
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              homeRow(
                context,
                title: "Popular Products",
                seeAll: "See all",
                onTap: () => Navigator.pushNamed(context, "/seeAllPopular"),
              ),
              const SizedBox(height: AppSizes.spaceBtwItems),
              SizedBox(
                height: 300.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.only(top: AppSizes.spaceBtwInputFields),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return Container(
                      width: 200.0,
                      margin: const EdgeInsets.only(right: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AspectRatio(
                            aspectRatio: 11 / 9,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(12.0),
                                image: DecorationImage(
                                  image:
                                      AssetImage(product['image'].toString()),
                                  fit: BoxFit.contain,
                                ),
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
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
