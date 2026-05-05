import 'package:resume/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:resume/styles/sizes.dart';

class AppTheme {
  static ThemeData liteTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      surface: LiteColors.surface,
      surfaceContainer: LiteColors.surfaceContainer,
      surfaceContainerHigh: LiteColors.surfaceContainerHigh,
      primary: LiteColors.primary,
      secondary: LiteColors.secondary,
      outline: LiteColors.outline,
      outlineVariant: LiteColors.outlineVariant,
    ),

    scaffoldBackgroundColor: LiteColors.surface,
    // Настройка специфичных компонентов
    appBarTheme: const AppBarTheme(
      backgroundColor: LiteColors.secondary,
      foregroundColor: Colors.black,
    ),
    fontFamily: "LiberationSerif",

    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: LiteColors.outline,
        fontSize: AppSizes.baseTextSize,
        height: 1
      ),
    ),
  );

  static ThemeData ozonTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.dark(
      surface: OzonDarkThemeColors.surface,
      surfaceContainer: OzonDarkThemeColors.surfaceContainer,
      surfaceContainerHigh: OzonDarkThemeColors.surfaceContainerHigh,
      primary: OzonDarkThemeColors.primary,
      secondary: OzonDarkThemeColors.secondary,
      outline: OzonDarkThemeColors.outline,
      outlineVariant: OzonDarkThemeColors.outlineVariant,
    ),

    scaffoldBackgroundColor: OzonDarkThemeColors.surface,
    // Настройка специфичных компонентов
    appBarTheme: const AppBarTheme(
      backgroundColor: OzonDarkThemeColors.secondary,
      foregroundColor: Colors.black,
    ),
    fontFamily: "LiberationSerif",
  );

  // Светлая тема
  static ThemeData liteGreenTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.light(
      surface: LiteGreenColors.surface,
      surfaceContainer: LiteGreenColors.surfaceContainer,
      surfaceContainerHigh: LiteGreenColors.surfaceContainerHigh,
      primary: LiteGreenColors.primary,
      secondary: LiteGreenColors.secondary,
      outline: LiteGreenColors.outline,
      outlineVariant: LiteGreenColors.outlineVariant,
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: LiteGreenColors.outline,
        fontSize: AppSizes.baseTextSize,
      ),
    ),
    scaffoldBackgroundColor: LiteGreenColors.surface,
    // Настройка специфичных компонентов
    appBarTheme: const AppBarTheme(
      backgroundColor: LiteGreenColors.secondary,
      foregroundColor: Colors.white,
    ),
    fontFamily: "LiberationSerif",
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
