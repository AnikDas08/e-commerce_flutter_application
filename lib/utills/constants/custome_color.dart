
import 'package:flutter/material.dart';

class CustomColor {
  CustomColor._();

  //App Basic Color
  static const Color primarycolor = Color(0xFF4b68ff);
  static const Color secondaryColor = Color(0xFFFFE248);
  static const Color accent = Color(0xFFb0c7ff);

  //Text Color
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF607570);
  static const Color textWhite = Colors.white;

  // Primary Gradient
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xFFFF9A9E),
      Color(0xFFFAD9C4),
      Color(0xFFFAD9C4),
    ],
  );

  // Background Colors
  static const Color light = Color(0xFFF6F6F6);  // Corrected from 0xFFFF6F6F6
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0x0ff3f5ff);

  // Background Container Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = Colors.white.withOpacity(0.1);

  // Button Colors
  static const Color buttonPrimary = Color(0xFF4B68FF);
  static const Color buttonSecondary = Color(0xFF6C757D);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border Colors
  static const Color borderPrimary = Color(0xFFD909D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Status Colors
  static const Color error = Color(0xFFD32F2F);
  static const Color success = Color(0xFF38BE3C);
  static const Color warning = Color(0xFFF57C8B);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE8E8E8);  // Corrected from 0xFFB9E8E8E
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);  // Corrected from 0xFFFF9F9F9
  static const Color white = Color(0xFFFFFFFF);
}
