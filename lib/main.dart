import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app.dart';
import 'core/config/environment.dart';
import 'core/localization/app_localization.dart';
import 'core/storage/app_storage.dart';
import 'generated/codegen_loader.g.dart';

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
        assetLoader: const CodegenLoader(),
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
        assetLoader: const CodegenLoader(),
        child: const MyApp(),
      ),
    ),
  );
}
