import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSizes.appbarHeight,
              ),
              Text(
                "Welcome to",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "SOSKO.",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColors.primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
