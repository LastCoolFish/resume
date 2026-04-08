import 'package:resume/styles/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData ozonTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      surface: OzonDarkThemeColors.surface,
      surfaceContainer: OzonDarkThemeColors.surfaceContainer,
      surfaceContainerHigh: OzonDarkThemeColors.surfaceContainerHigh,
      primary: OzonDarkThemeColors.primary,
      secondary: OzonDarkThemeColors.secondary,
      outline: OzonDarkThemeColors.outline,
      outlineVariant: OzonDarkThemeColors.outlineVariant
    ),

    scaffoldBackgroundColor: OzonDarkThemeColors.surface,
    // Настройка специфичных компонентов
    appBarTheme: const AppBarTheme(
      backgroundColor: OzonDarkThemeColors.secondary,
      foregroundColor: Colors.black,
    ),
  );

  // Светлая тема
  static ThemeData liteGreenTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      surface: LiteGreenColors.surface,
      primary: LiteGreenColors.primary,
      secondary: LiteGreenColors.secondary,
      outline: LiteGreenColors.outline,
    ),
    scaffoldBackgroundColor: LiteGreenColors.surface,
    // Настройка специфичных компонентов
    appBarTheme: const AppBarTheme(
      backgroundColor: LiteGreenColors.secondary,
      foregroundColor: Colors.black,
    ),
  );

  // Темная тема
  static ThemeData darkGreenTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      surface: DarkGreenColors.surface,
      primary: DarkGreenColors.primary,
      secondary: DarkGreenColors.secondary,
      outline: DarkGreenColors.outline,
    ),
    scaffoldBackgroundColor: DarkGreenColors.surface,
    appBarTheme: const AppBarTheme(
      backgroundColor: DarkGreenColors.secondary,
      foregroundColor: Colors.black,
    ),
  );
}