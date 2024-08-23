import 'package:flutter/material.dart';
import 'package:sosko_app/features/authentication/get_started_view.dart';
import 'package:sosko_app/features/authentication/login_view.dart';
import 'package:sosko_app/features/authentication/sign_up_view.dart';
import 'package:sosko_app/features/splash/splash_view.dart';

class AppRouter {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => const SplashView());
      case "/getStarted":
        return MaterialPageRoute(builder: (context) => const GetStartedView());
      case "/loginVIew":
        return MaterialPageRoute(builder: (context) => const LoginView());
      case "/signUpView":
        return MaterialPageRoute(builder: (context) => const SignUpView());
      default:
        return null;
    }
  }
}
