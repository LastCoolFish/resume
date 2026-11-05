import 'package:url_launcher/url_launcher.dart';

/// Открывает ссылку (сайт, mailto:, t.me). Ошибки запуска не пробрасываются.
Future<void> openUrl(String url) async {
  try {
    await launchUrl(Uri.parse(url), webOnlyWindowName: '_blank');
  } catch (_) {
    // Нет приложения-обработчика или некорректная ссылка — ничего не делаем.
  }
}
