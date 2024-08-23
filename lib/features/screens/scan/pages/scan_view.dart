import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/provider/bottom_sheet_provider.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class ScanView extends ConsumerWidget {
  const ScanView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
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
    );
  }
}
