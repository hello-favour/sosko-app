import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sosko_app/utils/constants/app_colors.dart';
import 'package:sosko_app/utils/constants/sizes.dart';

class SettingsRow extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final String title;
  final VoidCallback onTap;
  final Color iconColor;
  final bool isDarkMode;
  final String? selectedLanguage;
  final ValueChanged<bool>? onSwitchChanged;

  const SettingsRow({
    super.key,
    required this.icon,
    required this.bgColor,
    required this.title,
    required this.onTap,
    required this.iconColor,
    this.isDarkMode = false,
    this.onSwitchChanged,
    this.selectedLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: bgColor,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: iconColor,
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Expanded(child: Container()),
        title == 'Dark Mode'
            ? CupertinoSwitch(
                value: isDarkMode,
                onChanged: onSwitchChanged,
              )
            : Row(
                children: [
                  if (title == "Language")
                    Text(
                      selectedLanguage.toString(),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  const SizedBox(width: 5),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.colorGrey,
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        Icons.chevron_right,
                        size: 25,
                      ),
                    ),
                  ),
                ],
              ),
      ],
    );
  }
}
