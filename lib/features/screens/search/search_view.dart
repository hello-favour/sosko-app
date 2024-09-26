import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/search/widgets/filter_bottom_sheet.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class SearchView extends ConsumerWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.buttonWidth / 5),
          child: Column(
            children: [
              const SizedBox(height: AppSizes.spaceBtwSections),
              Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.search_normal),
                        hintText: 'Search..',
                        fillColor: AppColors.textFieldBG,
                        filled: true,
                        contentPadding: EdgeInsets.only(
                          left: AppSizes.sm,
                        ),
                      ),
                      keyboardType: TextInputType.name,
                    ),
                  ),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => const FilterBottomSheet(),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: AppColors.textFieldBG,
                        borderRadius:
                            BorderRadius.circular(AppSizes.cardRadiusSm),
                      ),
                      child: const Icon(
                        Iconsax.filter,
                        color: AppColors.colorBlack,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
