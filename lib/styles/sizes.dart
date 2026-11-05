import 'package:flutter/cupertino.dart';

class AppSizes {
  // LAYOUT
  static const double sheetMaxWidth = 1000;
  static const double sidebarWidth = 300;

  /// Ниже этой ширины сайдбар уезжает наверх, колонки складываются.
  static const double twoColumnBreakpoint = 760;
  static const double mainCardBorderRadius = 6;

  // PADDINGS
  static const double intergroupPadding = 24;
  static const double intragroupPadding = 16;

  // TEXT
  static const double baseTextSize = 14;
  static const double accentTextSize = 15;
  static const double chapterHeaderTextSize = 16;
  static const double nameTextSize = 24;
  static const double bodyLineHeight = 1.5;

  // SKILLS
  static const double skillsContainerBorderRadius = 4;

  // INFO SEGMENT
  static const double avatarSize = 160;
  static const EdgeInsets sidebarPaddings = EdgeInsets.symmetric(
    horizontal: 24,
    vertical: 40,
  );
  static const EdgeInsets mainPaddings = EdgeInsets.symmetric(
    horizontal: 40,
    vertical: 40,
  );
  static const EdgeInsets mainPaddingsNarrow = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 28,
  );
}
