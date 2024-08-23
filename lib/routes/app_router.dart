import 'package:flutter/material.dart';
import 'package:sosko_app/features/splash/splash_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashView());
      default:
        return null;
    }
  }
}
