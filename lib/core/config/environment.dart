import 'package:flutter/foundation.dart';

enum Environment {
  dev,
  prod,
}

class EnvironmentConfig {
  final Environment environment;
  final String apiBaseUrl;
  final bool enableLogging;

  const EnvironmentConfig({
    required this.environment,
    required this.apiBaseUrl,
    required this.enableLogging,
  });

  static const development = EnvironmentConfig(
    environment: Environment.dev,
    apiBaseUrl: 'https://api.dev.example.com',
    enableLogging: true,
  );

  static const production = EnvironmentConfig(
    environment: Environment.prod,
    apiBaseUrl: 'https://api.example.com',
    enableLogging: false,
  );

  static late EnvironmentConfig _instance;

  static void initialize(Environment env) {
    switch (env) {
      case Environment.dev:
        _instance = development;
        break;
      case Environment.prod:
        _instance = production;
        break;
    }
  }

  static EnvironmentConfig get instance => _instance;

  static bool get isDevelopment => _instance.environment == Environment.dev;
  static bool get isProduction => _instance.environment == Environment.prod;
  static String get currentApiBaseUrl => _instance.apiBaseUrl;
  static bool get isLoggingEnabled => _instance.enableLogging || kDebugMode;
}
