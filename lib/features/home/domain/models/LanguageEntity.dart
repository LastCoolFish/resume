class LanguageEntity {
  final String name;
  final String levelLabel;

  /// Уровень от 1 до [maxLevel] — рисуется точками.
  final int level;

  static const int maxLevel = 5;

  const LanguageEntity({
    required this.name,
    required this.levelLabel,
    required this.level,
  });
}
