import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sosko_app/features/authentication/widgets/app_rich_text.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/widgets/app_button.dart';

class OTPView extends ConsumerWidget {
  const OTPView({super.key});

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
                "Verification",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "please enter the code we sent to",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.colorGrey,
                    ),
              ),
              Text(
                "hello.williamsfav@gmail.com",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: AppSizes.spaceBtwInputFields * 2,
              ),
              const TextField(
                textAlignVertical: TextAlignVertical.center,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10),
                  fillColor: AppColors.textFieldBG,
                  filled: true,
                  labelText: 'Enter Code',
                  alignLabelWithHint: true,
                  hintText: 'Enter Code',
                ),
              ),
              const SizedBox(
                height: AppSizes.spaceBtwInputFields * 2,
              ),
              Center(
                child: CustomRichText(
                  textSpans: [
                    TextSpan(
                      text: "Didn't receive yet? ",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: 'Resend',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppSizes.appbarHeight),
              Expanded(child: Container()),
              SizedBox(
                width: double.infinity,
                child: AppButton(
                  onTap: () => Navigator.pushNamed(context, "/bottomSheetBar"),
                  title: "Confirm",
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
