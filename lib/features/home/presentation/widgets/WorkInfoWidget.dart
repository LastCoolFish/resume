import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:resume/features/home/domain/models/StudyEntity.dart';
import 'package:resume/features/home/presentation/widgets/%D0%A1hapterWidget.dart';
import 'package:resume/features/home/presentation/widgets/TimeLineWidget.dart';
import 'package:resume/styles/sizes.dart';
import 'package:timelines_plus/timelines_plus.dart';

import '../../domain/models/WorkExperienceEntity.dart';
import '../../domain/models/CompanyInfoEntity.dart';
import 'StudyInfoWidget.dart';
import 'WorkExperienceWidget.dart';

class WorkInfoWidget extends StatelessWidget {
  WorkInfoWidget({super.key});

  // Profession Name, Company, Date start, Date end, Description
  final List<WorkExperienceEntity> works = [
    WorkExperienceEntity(
      position: "Flutter-разработчик",
      company: const CompanyInfoEntity(name: "ООО Классрум"),
      startDate: DateTime(2025, 9, 1),
      endDate: DateTime(2025, 9, 1),
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

  final List<StudyEntity> study = [
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

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.only(right: 32),
      child: Column(
        children: [
          ChapterWidget(
            header: "ОПЫТ РАБОТЫ",
            content: TimeLineWidget(
              items:
                  works.map((wk) => WorkExperienceWidget(entity: wk)).toList(),
            ),
          ),

          SizedBox(height: AppSizes.intergroupPadding),
          ChapterWidget(
            header: "ОБРАЗОВАНИЕ",
            content: TimeLineWidget(
              items: study.map((st) => StudyInfoWidget(entity: st)).toList(),
            ),
          ),
          SizedBox(height: AppSizes.intergroupPadding),
          ChapterWidget(header: "КУРСЫ", content: Icon(Symbols.work)),
          SizedBox(height: AppSizes.intergroupPadding),
          ChapterWidget(header: "ПРОЕКТЫ", content: Icon(Symbols.work)),
        ],
      ),
    );
  }
}
