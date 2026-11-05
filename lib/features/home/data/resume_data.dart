import 'package:flutter/widgets.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../domain/models/CompanyInfoEntity.dart';
import '../domain/models/CourseEntity.dart';
import '../domain/models/LanguageEntity.dart';
import '../domain/models/ProjectEntity.dart';
import '../domain/models/StudyEntity.dart';
import '../domain/models/WorkExperienceEntity.dart';

typedef ContactItem = ({IconData icon, String text, String? url});

/// Все данные резюме в одном месте.
/// Часть записей — заглушки, замените их своими.
class ResumeData {
  static const String name = "Рыбалкин Богдан\nАлександрович";
  static const String job = "Python-разработчик";
  static const String photoAsset = "images/icon.jpg";

  static const List<ContactItem> contacts = [
    (icon: Symbols.place, text: "г. Москва", url: null),
    (
      icon: Symbols.captive_portal,
      text: "rybalkin.dev",
      url: "https://rybalkin.dev",
    ),
    (icon: Symbols.send, text: "@IT_Fish", url: "https://t.me/IT_Fish"),
    (
      icon: Symbols.mail,
      text: "br3027645@gmail.com",
      url: "mailto:br3027645@gmail.com",
    ),
  ];

  static const List<String> skills = [
    "Python",
    "PostgreSQL",
    "Flutter",
    "Dart",
    "Pandas",
    "FastAPI",
    "REST API",
    "PyQt",
    "Selenium",
  ];

  static const List<LanguageEntity> languages = [
    LanguageEntity(name: "Русский", levelLabel: "родной", level: 5),
    LanguageEntity(name: "Английский", levelLabel: "B1", level: 3),
  ];

  static final List<WorkExperienceEntity> works = [
    WorkExperienceEntity(
      position: "Flutter-разработчик",
      company: const CompanyInfoEntity(name: "ООО Классрум"),
      startDate: DateTime(2025, 9, 1),
      endDate: null,
      description:
          "Занимался разработкой мобильного приложения\n- Занимался разработкой мобильного приложения\n- Занимался разработкой мобильного приложения",
    ),
    WorkExperienceEntity(
      position: "Flutter-разработчик",
      company: const CompanyInfoEntity(name: "ООО Классрум"),
      startDate: DateTime(2025, 9, 1),
      endDate: DateTime(2025, 9, 1),
      description:
          "Занимался разработкой мобильного приложения\n- Занимался разработкой мобильного приложения",
    ),
  ];

  static final List<StudyEntity> study = [
    StudyEntity(
      universityName: "МГТУ им. Н.Э. Баумана",
      degree: "Магистр",
      fieldName: "Информатика и вычислительная техника",
      specialization: "Разработка автоматизированных систем",
      startDate: DateTime(2023),
      endDate: DateTime(2024),
    ),
    StudyEntity(
      universityName: "НИУ ВШЭ",
      degree: "Бакалавр",
      fieldName: "Программная инженерия",
      specialization: "Мобильная разработка",
      startDate: DateTime(2018),
      endDate: null,
    ),
  ];

  static const List<CourseEntity> courses = [
    CourseEntity(
      name: "Название курса",
      provider: "Платформа",
      startYear: 2023,
      endYear: 2024,
    ),
  ];

  static const List<ProjectEntity> projects = [
    ProjectEntity(
      name: "Название проекта",
      description: "Короткое описание: что делает проект и в чём ваша роль.",
      stack: ["Python", "FastAPI", "PostgreSQL"],
      url: "https://github.com/LastCoolFish",
    ),
  ];
}
