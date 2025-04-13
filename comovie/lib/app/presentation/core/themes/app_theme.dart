import 'package:flutter/material.dart';

class AppTheme {
  // Define your brand colors
  static const Color primaryColor = Color(0xFFE50914); // Netflix red
  static const Color scaffoldLight = Color(0xFFF5F5F5);
  static const Color scaffoldDark = Color(0xFF121212);
  static const Color textLight = Colors.black87;
  static const Color textDark = Colors.white70;

  // Shared typography
  static const TextTheme textTheme = TextTheme(
    headlineLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 16),
    labelLarge: TextStyle(fontSize: 14, letterSpacing: 0.5),
  );

  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: scaffoldLight,
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
    textTheme: textTheme.apply(
      bodyColor: textLight,
      displayColor: textLight,
    ),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: Colors.black54,
    ),
    useMaterial3: true,
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: scaffoldDark,
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
    ),
    textTheme: textTheme.apply(
      bodyColor: textDark,
      displayColor: textDark,
    ),
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: Colors.white38,
    ),
    useMaterial3: true,
  );
}

