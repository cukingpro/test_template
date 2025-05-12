import 'dart:ui';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppLocalization {
  static const supportedLocales = [
    Locale('en'),
    Locale('vi'),
  ];

  static const fallbackLocale = Locale('en');
  static const path = 'assets/translations';
  static const startLocale = Locale('en');

  static String getCurrentLanguageCode(BuildContext context) {
    return context.locale.languageCode;
  }

  static String getCurrentLanguageName(BuildContext context) {
    final languageCode = getCurrentLanguageCode(context);
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'vi':
        return 'Tiếng Việt';
      default:
        return 'English';
    }
  }

  static Future<void> setLocale(BuildContext context, String languageCode) async {
    final locale = Locale(languageCode);
    await context.setLocale(locale);
  }
}
