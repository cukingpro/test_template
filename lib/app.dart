import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/localization/app_localization.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_manager.dart';
import 'generated/locale_keys.g.dart';
import 'routes/app_router.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get router
    final router = ref.watch(routerProvider);

    // Get theme mode
    final themeMode = ref.watch(themeProvider);

    return MaterialApp.router(
      title: LocaleKeys.app_name.tr(),
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: router,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      debugShowCheckedModeBanner: false,
    );
  }
}
