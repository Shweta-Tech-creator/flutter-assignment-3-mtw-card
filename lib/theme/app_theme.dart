import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Brand Colors matching the exact MTW 2026 reference
  static const Color mtwPink = Color(0xFFE5347F);
  static const Color mtwDarkPink = Color(0xFFBE185D);
  static const Color mtwCyan = Color(0xFF00C4D6);
  static const Color mtwDarkBlue = Color(0xFF0077B6);
  static const Color mtwNavy = Color(0xFF1E293B);
  static const Color mtwPurple = Color(0xFF818CF8);
  static const Color white = Colors.white;
  static const Color cardBackground = Colors.white;
  static const Color textPrimary = Color(0xFF111827);
  static const Color textSecondary = Color(0xFF374151);
  static const Color textMuted = Color(0xFF6B7280);
  static const Color lightGray = Color(0xFFF3F4F6);
  static const Color borderGray = Color(0xFFE5E7EB);

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: mtwPink,
      colorScheme: ColorScheme.fromSeed(
        seedColor: mtwPink,
        primary: mtwPink,
        secondary: mtwCyan,
        surface: white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: mtwPink,
        foregroundColor: white,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: white,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2,
        ),
      ),
      textTheme: GoogleFonts.interTextTheme().copyWith(
        headlineLarge: GoogleFonts.inter(
          fontSize: 32,
          fontWeight: FontWeight.w800,
          color: textPrimary,
          letterSpacing: 0.5,
        ),
        headlineMedium: GoogleFonts.inter(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: textPrimary,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: textSecondary,
        ),
        bodyLarge: GoogleFonts.inter(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: textPrimary,
        ),
        bodyMedium: GoogleFonts.inter(
          fontSize: 13,
          fontWeight: FontWeight.w500,
          color: textSecondary,
        ),
      ),
    );
  }
}
