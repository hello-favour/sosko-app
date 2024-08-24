// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:sosko_app/features/screens/home/widgets/notification_button.dart';
// import 'package:sosko_app/utils/constants/app_colors.dart';
// import 'package:sosko_app/widgets/app_bar.dart';

// class HomeView extends ConsumerWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: MyAppBar(
//         title: Text(
//           "SOSKO",
//           style: Theme.of(context).textTheme.headlineSmall!.copyWith(
//                 color: AppColors.primaryColor,
//                 fontWeight: FontWeight.bold,
//               ),
//         ),
//         leadingOnPressed: () {},
//         leadingIcon: Iconsax.category,
//         showBackArrow: false,
//         action: [
//           NotificationButton(
//             onTap: () {},
//           ),
//         ],
//       ),
//       drawer: GestureDetector(
//         onTap: () {},
//         child: Container(
//           margin: const EdgeInsets.all(8),
//           padding: const EdgeInsets.all(1),
//           decoration: const BoxDecoration(
//             shape: BoxShape.circle,
//             color: AppColors.primaryColor,
//           ),
//           child: const Icon(
//             Iconsax.category,
//             size: 18,
//           ),
//         ),
//       ),
//       body: Container(),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/screens/home/widgets/app_drawer.dart';
import 'package:sosko_app/features/screens/home/widgets/notification_button.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/widgets/app_bar.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
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
      body: Container(),
    );
  }
}
