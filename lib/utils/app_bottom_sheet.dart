import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/favorites/pages/favourites_view.dart';
import 'package:sosko_app/features/screens/home/pages/home_view.dart';
import 'package:sosko_app/features/screens/profile/pages/profile_view.dart';
import 'package:sosko_app/features/screens/scan/pages/scan_view.dart';
import 'package:sosko_app/features/screens/search/search_view.dart';
import 'package:sosko_app/provider/bottom_sheet_provider.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/helper/helper_function.dart';

class AppBottomSheet extends ConsumerWidget {
  const AppBottomSheet({super.key});

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    FavouritesView(),
    ScanView(),
    SearchView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(bottomNavIndexProvider);
    final dark = HelperFunction.isDarkMode(context);

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: dark ? Colors.black : Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          elevation: 0,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.home),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.heart),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: AppColors.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Iconsax.scan,
                  size: 36,
                  color: Colors.white,
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.search_normal),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Iconsax.profile_circle),
              label: '',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor:
              dark ? AppColors.primaryColor : AppColors.colorBlack,
          unselectedItemColor:
              dark ? AppColors.colorWhite : AppColors.colorDarkGrey,
          onTap: (index) {
            if (index == 2) {
              Navigator.pushNamed(context, "/scanView");
              return;
            }
            ref.read(bottomNavIndexProvider.notifier).state = index;
          },
        ),
      ),
    );
  }
}
