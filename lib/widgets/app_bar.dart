import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';
import 'package:sosko_app/utils/devices/device_utility.dart';
import 'package:sosko_app/utils/helper/helper_function.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.action,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? action;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Iconsax.arrow_left,
                  color: dark ? AppColors.colorWhite : AppColors.colorBlack,
                ))
            : leadingIcon != null
                ? GestureDetector(
                    onTap: leadingOnPressed,
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.all(1),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primaryColor,
                      ),
                      child: Icon(
                        leadingIcon,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                  )
                : null,
        title: title,
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(DeviceUserUtility.getAppBarHeight());
}
