import 'dart:ui';

/// Палитра светлой темы (ориентир — umerenkov.dev).
///
/// Соответствие токенов ColorScheme:
/// - surface                  — фон страницы
/// - surfaceContainer         — «лист» резюме
/// - surfaceContainerLow      — фон сайдбара
/// - primary                  — акцент (должности, даты, ссылки, точки таймлайна)
/// - outline                  — основной цвет текста и заголовков
/// - onSurfaceVariant         — приглушённый текст (компании, подписи)
/// - outlineVariant           — линии и разделители
/// - secondaryContainer       — фон тегов навыков
/// - onSecondaryContainer     — текст тегов навыков
/// - primaryContainer         — фон сайдбара
/// - onPrimaryContainer       — текст и иконки в сайдбаре
class LightColors {
  static const Color surface = Color(0xffeaeef2);
  static const Color surfaceContainer = Color(0xffffffff);
  static const Color surfaceContainerLow = Color(0xfff5f7fa);

  static const Color primary = Color(0xff1a4b8c);
  static const Color onPrimary = Color(0xffffffff);

  static const Color outline = Color(0xff222222);
  static const Color onSurfaceVariant = Color(0xff555555);
  static const Color outlineVariant = Color(0xffd8dde3);

  static const Color tagBackground = Color(0xffe8edf3);
  static const Color tagText = Color(0xff2c4a6e);

  static const Color sidebar = Color(0xff1a4b8c);
  static const Color onSidebar = Color(0xffffffff);

  static const Color shadow = Color(0x14000000);
}

/// Палитра тёмной темы.
class DarkColors {
  static const Color surface = Color(0xff111318);
  static const Color surfaceContainer = Color(0xff1e2128);
  static const Color surfaceContainerLow = Color(0xff181b21);

  static const Color primary = Color(0xff6ea8e6);
  static const Color onPrimary = Color(0xff111318);

  static const Color outline = Color(0xffd0d4da);
  static const Color onSurfaceVariant = Color(0xff8a909a);
  static const Color outlineVariant = Color(0xff2e333b);

  static const Color tagBackground = Color(0xff262b34);
  static const Color tagText = Color(0xff8bb8e8);

  static const Color sidebar = Color(0xff16283f);
  static const Color onSidebar = Color(0xffe4e8ed);

  static const Color shadow = Color(0x59000000);
}
