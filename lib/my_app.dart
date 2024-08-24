import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sosko_app/routes/app_router.dart';
import 'package:sosko_app/utils/app_bottom_sheet.dart';

import 'utils/theme/custom_themes/get_themedata.dart';
import 'utils/theme/theme_notifier.dart';

class MyApp extends ConsumerWidget {
  MyApp({super.key});

  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: 'Excel Staffing',
      debugShowCheckedModeBanner: false,
      theme: getThemeData(themeMode),
      darkTheme: getThemeData(AppThemeMode.dark),
      themeMode: themeMode == AppThemeMode.system
          ? ThemeMode.system
          : themeMode == AppThemeMode.dark
              ? ThemeMode.dark
              : ThemeMode.light,
      home: const AppBottomSheet(),
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}
