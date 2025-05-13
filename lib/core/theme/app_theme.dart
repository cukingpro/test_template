import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum AppThemeMode {
  light,
  dark,
  system,
}

class AppTheme {
  static const _fontFamily = 'Inter';

  // Text Styles
  static const _baseTextStyle = TextStyle(
    fontFamily: _fontFamily,
    fontWeight: FontWeight.w400,
  );

  // Colors - Temporary until we generate the colors.gen.dart file
  static const Color _primaryColor = Color(0xFF0070F3);
  static const Color _accentColor = Color(0xFFFF4081);
  static const Color _errorColor = Color(0xFFEF4444);

  static const Color _backgroundLightColor = Color(0xFFF9FAFB);
  static const Color _surfaceLightColor = Color(0xFFFFFFFF);
  static const Color _textPrimaryLightColor = Color(0xFF111827);
  static const Color _textSecondaryLightColor = Color(0xFF4B5563);
  static const Color _grayLight100 = Color(0xFFF3F4F6);
  static const Color _grayLight200 = Color(0xFFE5E7EB);

  static const Color _backgroundDarkColor = Color(0xFF111827);
  static const Color _surfaceDarkColor = Color(0xFF1F2937);
  static const Color _textPrimaryDarkColor = Color(0xFFF9FAFB);
  static const Color _textSecondaryDarkColor = Color(0xFFD1D5DB);
  static const Color _grayDark700 = Color(0xFF374151);
  static const Color _grayDark800 = Color(0xFF1F2937);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: _primaryColor,
      secondary: _accentColor,
      background: _backgroundLightColor,
      surface: _surfaceLightColor,
      error: _errorColor,
    ),
    scaffoldBackgroundColor: _backgroundLightColor,
    appBarTheme: AppBarTheme(
      backgroundColor: _surfaceLightColor,
      foregroundColor: _textPrimaryLightColor,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: _baseTextStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: _textPrimaryLightColor,
      ),
      displayMedium: _baseTextStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: _textPrimaryLightColor,
      ),
      displaySmall: _baseTextStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: _textPrimaryLightColor,
      ),
      headlineMedium: _baseTextStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: _textPrimaryLightColor,
      ),
      headlineSmall: _baseTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: _textPrimaryLightColor,
      ),
      titleLarge: _baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: _textPrimaryLightColor,
      ),
      titleMedium: _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _textPrimaryLightColor,
      ),
      titleSmall: _baseTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: _textPrimaryLightColor,
      ),
      bodyLarge: _baseTextStyle.copyWith(
        fontSize: 16,
        color: _textPrimaryLightColor,
      ),
      bodyMedium: _baseTextStyle.copyWith(
        fontSize: 14,
        color: _textPrimaryLightColor,
      ),
      bodySmall: _baseTextStyle.copyWith(
        fontSize: 12,
        color: _textSecondaryLightColor,
      ),
      labelLarge: _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _textPrimaryLightColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _primaryColor,
        side: BorderSide(color: _primaryColor),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _grayLight100,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _errorColor),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: _surfaceLightColor,
    ),
    dividerTheme: DividerThemeData(
      color: _grayLight200,
      thickness: 1,
      space: 1,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: _primaryColor,
      secondary: _accentColor,
      background: _backgroundDarkColor,
      surface: _surfaceDarkColor,
      error: _errorColor,
    ),
    scaffoldBackgroundColor: _backgroundDarkColor,
    appBarTheme: AppBarTheme(
      backgroundColor: _surfaceDarkColor,
      foregroundColor: _textPrimaryDarkColor,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.transparent,
      ),
    ),
    textTheme: TextTheme(
      displayLarge: _baseTextStyle.copyWith(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: _textPrimaryDarkColor,
      ),
      displayMedium: _baseTextStyle.copyWith(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: _textPrimaryDarkColor,
      ),
      displaySmall: _baseTextStyle.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: _textPrimaryDarkColor,
      ),
      headlineMedium: _baseTextStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: _textPrimaryDarkColor,
      ),
      headlineSmall: _baseTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: _textPrimaryDarkColor,
      ),
      titleLarge: _baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: _textPrimaryDarkColor,
      ),
      titleMedium: _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _textPrimaryDarkColor,
      ),
      titleSmall: _baseTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: _textPrimaryDarkColor,
      ),
      bodyLarge: _baseTextStyle.copyWith(
        fontSize: 16,
        color: _textPrimaryDarkColor,
      ),
      bodyMedium: _baseTextStyle.copyWith(
        fontSize: 14,
        color: _textPrimaryDarkColor,
      ),
      bodySmall: _baseTextStyle.copyWith(
        fontSize: 12,
        color: _textSecondaryDarkColor,
      ),
      labelLarge: _baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: _textPrimaryDarkColor,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _primaryColor,
        side: BorderSide(color: _primaryColor),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: _grayDark800,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _primaryColor),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: _errorColor),
      ),
    ),
    cardTheme: CardTheme(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: _surfaceDarkColor,
    ),
    dividerTheme: DividerThemeData(
      color: _grayDark700,
      thickness: 1,
      space: 1,
    ),
  );
}
