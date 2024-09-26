import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/features/authentication/widgets/app_rich_text.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_button.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: AppSizes.imageThumbSize,
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
              const SizedBox(
                height: AppSizes.spaceBtwInputFields * 2,
              ),
              const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  fillColor: AppColors.textFieldBG,
                  border: InputBorder.none,
                  filled: true,
                  labelText: 'Email address',
                  hintText: 'Email address',
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwInputFields * 2,
              ),
              const TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  fillColor: AppColors.textFieldBG,
                  filled: true,
                  labelText: 'Password',
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Iconsax.lock,
                  ),
                  suffixIcon: Icon(
                    Iconsax.eye_slash,
                  ),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwInputFields,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwInputFields,
              ),
              Expanded(child: Container()),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  onTap: () => Navigator.pushNamed(context, "/OTPView"),
                  title: "Log In",
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwInputFields,
              ),
              Center(
                child: CustomRichText(
                  textSpans: [
                    TextSpan(
                      text: "Don't have an account? ",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, "/signUpView");
                        },
                      text: 'Sign In',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.appbarHeight),
            ],
          ),
        ),
      ),
    );
  }
}
