import 'package:flutter/material.dart';

/// App color palette
class AppColors {
  static const Color primary = Color(0xFF2D2D2B);
  static const Color secondary = Color(0xFFFAEBD7);
  static const Color accent = Color(0xFFDAA420);
  static const Color surface = Color(0xFF2F4F4F);
}

/// App text styles
class AppTextStyles {
  static const String _fontFamily = 'Mitr';

  static const TextStyle appBarTitle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
    color: AppColors.secondary,
  );

  static const TextStyle soundButtonTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
    color: AppColors.surface,
  );

  static const TextStyle supportText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
    color: AppColors.accent,
  );

  static const TextStyle sectionHeader = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
    color: AppColors.surface,
  );
}

/// App dimensions and spacing
class AppDimensions {
  static const double defaultPadding = 16.0;
  static const double sectionSpacing = 30.0;
  static const double iconSize = 50.0;
  static const double dividerThickness = 1.0;
  static const double dividerIndent = 15.0;
}
