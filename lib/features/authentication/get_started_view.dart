import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sosko_app/features/authentication/widgets/app_rich_text.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/app_image.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_button.dart';

class GetStartedView extends ConsumerWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: AppSizes.appbarHeight,
              ),
              Text(
                "SOSKO",
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: AppColors.primaryColor,
                    ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwItems / 5,
              ),
              CustomRichText(
                textSpans: [
                  TextSpan(
                      text: 'Welcome to ',
                      style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(
                      text: 'SOSKO!',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.primaryColor,
                          )),
                  TextSpan(
                      text: ' Let’s shop together',
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(
                height: AppSizes.appbarHeight,
              ),
              SvgPicture.asset(AppImages.onboardShoppingBag),
              const SizedBox(
                height: AppSizes.appbarHeight,
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppSizes.lg),
                  child: AppButton(
                    onTap: () {
                      Navigator.pushNamed(context, "/loginVIew");
                    },
                    title: "Let's Start",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
