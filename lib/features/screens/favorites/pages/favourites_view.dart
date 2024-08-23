import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class FavouritesView extends ConsumerWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text(
          "Favorites",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        leadingOnPressed: () {},
        leadingIcon: Iconsax.arrow_left,
        showBackArrow: false,
      ),
    );
  }
}
