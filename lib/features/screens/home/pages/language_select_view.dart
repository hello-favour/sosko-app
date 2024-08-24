import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/provider/bottom_sheet_provider.dart';
import 'package:sosko_app/provider/selected_language_provider.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class LanguageSelectView extends ConsumerWidget {
  const LanguageSelectView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedLanguage = ref.watch(selectedLanguageProvider);

    final languages = {
      'English': 'EN',
      'Japanese': 'JA',
      'Arabic': 'AR',
      'Urdu': 'UR',
      'French': 'FR',
      'Bangla': 'BN',
    };

    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Language",
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
          child: Column(
            children: [
              const SizedBox(height: AppSizes.appbarHeight / 2),
              ...languages.entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        entry.key,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Radio<String>(
                          value: entry.value,
                          groupValue: selectedLanguage,
                          onChanged: (String? value) {
                            if (value != null) {
                              ref
                                  .read(selectedLanguageProvider.notifier)
                                  .setLanguage(value);
                            }
                          },
                          activeColor: Colors.white,
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              return AppColors.primaryColor;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
