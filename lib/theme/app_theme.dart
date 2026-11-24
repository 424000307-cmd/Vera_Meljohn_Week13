import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF1B6B5A);
  static const Color accent = Color(0xFFF2A93B);
  static const Color background = Color(0xFFF6F8F7);

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: primary),
      primaryColor: primary,
      scaffoldBackgroundColor: background,
      textTheme: const TextTheme(
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color(0xFF1C1C1C),
        ),
        titleMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0xFF1C1C1C),
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: Color(0xFF5F6B66),
        ),
      ),
    );
  }
}