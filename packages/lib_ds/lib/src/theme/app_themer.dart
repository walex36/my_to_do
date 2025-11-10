import 'package:flutter/material.dart';
import 'package:lib_ds/src/theme/app_color.dart';

class AppTheme {
  static ThemeData get light => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.secondary,
      onSurface: AppColors.background,
      surface: AppColors.primary,
    ),
    scaffoldBackgroundColor: AppColors.background,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
    ),
    segmentedButtonTheme: SegmentedButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStateProperty.all(AppColors.surface),
        side: WidgetStateProperty.all(BorderSide(color: Colors.transparent)),
        backgroundColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected) ? AppColors.secondary : AppColors.container,
        ),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      fillColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected) ? AppColors.secondary : AppColors.container,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: AppColors.background,
      dragHandleColor: AppColors.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: AppColors.text),
      displayMedium: TextStyle(color: AppColors.text),
      displaySmall: TextStyle(color: AppColors.text),
      headlineLarge: TextStyle(color: AppColors.text),
      headlineMedium: TextStyle(color: AppColors.text),
      headlineSmall: TextStyle(color: AppColors.text),
      titleLarge: TextStyle(color: AppColors.text),
      titleMedium: TextStyle(color: AppColors.text),
      titleSmall: TextStyle(color: AppColors.text),
      bodyLarge: TextStyle(color: AppColors.text),
      bodyMedium: TextStyle(color: AppColors.text),
      bodySmall: TextStyle(color: AppColors.text),
      labelLarge: TextStyle(color: AppColors.text),
      labelMedium: TextStyle(color: AppColors.text),
      labelSmall: TextStyle(color: AppColors.text),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      counterStyle: TextStyle(color: AppColors.text, fontWeight: FontWeight.w600),
    ),
  );
}
