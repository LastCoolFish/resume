import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/styles/colors.dart';
import 'package:resume/styles/sizes.dart';

class AppTheme {
  static ThemeData liteTheme = _build(
    ColorScheme.light(
      surface: LightColors.surface,
      surfaceContainer: LightColors.surfaceContainer,
      surfaceContainerLow: LightColors.surfaceContainerLow,
      primary: LightColors.primary,
      onPrimary: LightColors.onPrimary,
      primaryContainer: LightColors.sidebar,
      onPrimaryContainer: LightColors.onSidebar,
      secondaryContainer: LightColors.tagBackground,
      onSecondaryContainer: LightColors.tagText,
      onSurface: LightColors.outline,
      onSurfaceVariant: LightColors.onSurfaceVariant,
      outline: LightColors.outline,
      outlineVariant: LightColors.outlineVariant,
      shadow: LightColors.shadow,
    ),
  );

  static ThemeData darkTheme = _build(
    ColorScheme.dark(
      surface: DarkColors.surface,
      surfaceContainer: DarkColors.surfaceContainer,
      surfaceContainerLow: DarkColors.surfaceContainerLow,
      primary: DarkColors.primary,
      onPrimary: DarkColors.onPrimary,
      primaryContainer: DarkColors.sidebar,
      onPrimaryContainer: DarkColors.onSidebar,
      secondaryContainer: DarkColors.tagBackground,
      onSecondaryContainer: DarkColors.tagText,
      onSurface: DarkColors.outline,
      onSurfaceVariant: DarkColors.onSurfaceVariant,
      outline: DarkColors.outline,
      outlineVariant: DarkColors.outlineVariant,
      shadow: DarkColors.shadow,
    ),
  );

  static ThemeData _build(ColorScheme scheme) {
    final base = ThemeData(useMaterial3: true, colorScheme: scheme);

    // Основной текст — Source Sans 3 с комфортным межстрочным интервалом.
    final textTheme = GoogleFonts.sourceSans3TextTheme(base.textTheme).copyWith(
      bodyMedium: GoogleFonts.sourceSans3(
        color: scheme.outline,
        fontSize: AppSizes.baseTextSize,
        height: AppSizes.bodyLineHeight,
      ),
    );

    return base.copyWith(
      scaffoldBackgroundColor: scheme.surface,
      textTheme: textTheme,
      dividerColor: scheme.outlineVariant,
    );
  }
}

/// Стили заголовков (Merriweather). Цвет по умолчанию берётся из темы.
class AppTextStyles {
  static TextStyle heading(
    BuildContext context, {
    double size = AppSizes.chapterHeaderTextSize,
    Color? color,
    double height = 1.3,
  }) {
    return GoogleFonts.merriweather(
      fontSize: size,
      fontWeight: FontWeight.w700,
      height: height,
      color: color ?? Theme.of(context).colorScheme.outline,
    );
  }
}
