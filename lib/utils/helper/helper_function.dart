import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class HelperFunction {
  static void showSnackBar(String message) {
    ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static double screenHeight() {
    return MediaQuery.of(navigatorKey.currentContext!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(navigatorKey.currentContext!).size.width;
  }

  static String getFormattedDate(DateTime date,
      {String format = "dd-MMM-yyy"}) {
    return DateFormat(format).format(date);
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
