import 'package:intl/intl.dart';

/// Форматирование периодов для таймлайна. Требует инициализации локали `ru`.
class PeriodFormat {
  static final DateFormat _monthYear = DateFormat("LLLL yyyy", "ru");
  static final DateFormat _year = DateFormat("yyyy", "ru");

  static const String _present = "настоящее время";

  /// «Сентябрь 2025 — настоящее время» (две строки в узкой колонке).
  static String monthPeriod(DateTime start, DateTime? end) {
    final from = _capitalize(_monthYear.format(start));
    final to = end == null ? _present : _monthYear.format(end);
    return "$from —\n$to";
  }

  /// «2018 — н. в.»
  static String yearPeriod(DateTime start, DateTime? end) {
    final to = end == null ? "н. в." : _year.format(end);
    return "${_year.format(start)} — $to";
  }

  static String _capitalize(String s) =>
      s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
}
