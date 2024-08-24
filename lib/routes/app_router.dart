import 'package:flutter/material.dart';
import 'package:sosko_app/features/authentication/get_started_view.dart';
import 'package:sosko_app/features/authentication/login_view.dart';
import 'package:sosko_app/features/authentication/otp_view.dart';
import 'package:sosko_app/features/authentication/sign_up_view.dart';
import 'package:sosko_app/features/screens/home/pages/settings_view.dart';
import 'package:sosko_app/features/screens/profile/pages/profile_view.dart';
import 'package:sosko_app/features/screens/scan/pages/scan_view.dart';
import 'package:sosko_app/features/splash/splash_view.dart';
import 'package:sosko_app/utils/app_bottom_sheet.dart';

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
      case "/OTPView":
        return MaterialPageRoute(builder: (context) => const OTPView());
      case "/scanView":
        return MaterialPageRoute(builder: (context) => const ScanView());
      case "/bottomSheetBar":
        return MaterialPageRoute(builder: (context) => const AppBottomSheet());
      case "/settingsView":
        return MaterialPageRoute(builder: (context) => const SettingsView());
      case "/profileView":
        return MaterialPageRoute(builder: (context) => const ProfileView());
      default:
        return null;
    }
  }
}
