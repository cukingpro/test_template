import 'package:flutter/material.dart';
import 'package:shadcn_ui/shadcn_ui.dart';

enum AppThemeMode {
  light,
  dark,
  system,
}

class AppTheme {

  // Get light theme data
  static ShadThemeData getLightTheme() {
    // Create base theme data
    return ShadThemeData(
      brightness: Brightness.light,
      colorScheme: ShadZincColorScheme.light(),
      // Add more customizations if needed
    );
  }

  // Get dark theme data
  static ShadThemeData getDarkTheme() {
    // Create base theme data
    return ShadThemeData(
      brightness: Brightness.dark,
      colorScheme: ShadZincColorScheme.dark(),
      // Add more customizations if needed
    );
  }
}
