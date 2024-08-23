
// import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:sosko_app/utils/helper/helper_function.dart';

// class AppBottomSheet extends StatefulWidget {
//   const AppBottomSheet({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _AppBottomSheetState createState() => _AppBottomSheetState();
// }

// class _AppBottomSheetState extends State<AppBottomSheet> {
//   int _selectedIndex = 0;

//   static const List<Widget> _widgetOptions = <Widget>[
//     HomeView(),
//     ShiftView(),
//     AvailabilityView(),
//     ProfileView(),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final dark = HelperFunction.isDarkMode(context);
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.fixed,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Iconsax.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Iconsax.timer),
//             label: 'Shift',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Iconsax.calendar_2),
//             label: 'Availability',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Iconsax.profile_circle),
//             label: 'Profile',
//           ),
//         ],
//         currentIndex: _selectedIndex,
//         selectedItemColor: dark ? AppColors.primaryColor : AppColors.colorBlack,
//         // backgroundColor: AppColors.colorWhite,
//         unselectedItemColor:
//             dark ? AppColors.colorWhite : AppColors.colorDarkGrey,
//         unselectedLabelStyle: const TextStyle(color: AppColors.colorBlack),
//         onTap: _onItemTapped,
//       ),
//     );
//   }
// }
