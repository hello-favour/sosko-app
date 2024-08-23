import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';

class AppRichText extends StatelessWidget {
  const AppRichText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
          text: 'Welcome to ',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        TextSpan(
          text: 'SOSKO! ',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.primaryColor,
              ),
        ),
        TextSpan(
          text: 'lets shop together',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ]),
    );
  }
}
