import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/environment/environment.dart';
import 'config/localization/app_localization.dart';
import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';
import 'config/theme/theme_manager.dart';
import 'core/storage/app_storage.dart';

Future<void> main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment
  EnvironmentConfig.initialize(Environment.dev);

  // Initialize storage
  await AppStorage.init();

  // Initialize localization
  await EasyLocalization.ensureInitialized();

  // Run the app with providers
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: AppLocalization.supportedLocales,
        path: AppLocalization.path,
        fallbackLocale: AppLocalization.fallbackLocale,
        child: const MyApp(),
      ),
    ),
  );
}

// Production entry point
Future<void> mainProd() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize environment for production
  EnvironmentConfig.initialize(Environment.prod);

  // Initialize storage
  await AppStorage.init();

  // Initialize localization
  await EasyLocalization.ensureInitialized();

  // Run the app with providers
  runApp(
    ProviderScope(
      child: EasyLocalization(
        supportedLocales: AppLocalization.supportedLocales,
        path: AppLocalization.path,
        fallbackLocale: AppLocalization.fallbackLocale,
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get router
    final router = ref.watch(routerProvider);

    // Get theme mode
    final themeMode = ref.watch(themeProvider);

    return MaterialApp.router(
      title: 'app.name'.tr(),
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
