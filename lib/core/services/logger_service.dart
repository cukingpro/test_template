import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

import '../../config/environment/environment.dart';

class LoggerService {
  static final LoggerService _instance = LoggerService._internal();
  factory LoggerService() => _instance;

  LoggerService._internal() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 2,
        errorMethodCount: 8,
        lineLength: 120,
        colors: true,
        printEmojis: true,
        dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
      ),
      level: EnvironmentConfig.isLoggingEnabled ? Level.trace : Level.off,
    );
  }

  late Logger _logger;

  void trace(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (EnvironmentConfig.isLoggingEnabled) {
      _logger.t(message, error: error, stackTrace: stackTrace);
    }
  }

  void debug(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (EnvironmentConfig.isLoggingEnabled) {
      _logger.d(message, error: error, stackTrace: stackTrace);
    }
  }

  void info(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (EnvironmentConfig.isLoggingEnabled) {
      _logger.i(message, error: error, stackTrace: stackTrace);
    }
  }

  void warning(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (EnvironmentConfig.isLoggingEnabled) {
      _logger.w(message, error: error, stackTrace: stackTrace);
    }
  }

  void error(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (EnvironmentConfig.isLoggingEnabled || kReleaseMode) {
      _logger.e(message, error: error, stackTrace: stackTrace);
    }
  }

  void fatal(dynamic message, [dynamic error, StackTrace? stackTrace]) {
    if (EnvironmentConfig.isLoggingEnabled || kReleaseMode) {
      _logger.f(message, error: error, stackTrace: stackTrace);
    }
  }
}
