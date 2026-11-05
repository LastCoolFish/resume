import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../core/date_format.dart';
import '../../../../styles/sizes.dart';
import '../../data/resume_data.dart';
import 'CourseWidget.dart';
import 'ProjectWidget.dart';
import 'StudyInfoWidget.dart';
import 'TimeLineWidget.dart';
import 'WorkExperienceWidget.dart';
import 'СhapterWidget.dart';

/// Основная колонка: опыт, образование, курсы, проекты.
/// Пустые секции не показываются.
class MainColumnWidget extends StatelessWidget {
  const MainColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = <Widget>[
      if (ResumeData.works.isNotEmpty)
        ChapterWidget(
          header: "ОПЫТ РАБОТЫ",
          icon: Symbols.work,
          content: TimeLineWidget(
            items:
                ResumeData.works
                    .map(
                      (w) => TimelineItem(
                        period: PeriodFormat.monthPeriod(w.startDate, w.endDate),
                        child: WorkExperienceWidget(entity: w),
                      ),
                    )
                    .toList(),
          ),
        ),
      if (ResumeData.study.isNotEmpty)
        ChapterWidget(
          header: "ОБРАЗОВАНИЕ",
          icon: Symbols.school,
          content: TimeLineWidget(
            items:
                ResumeData.study
                    .map(
                      (s) => TimelineItem(
                        period: PeriodFormat.yearPeriod(s.startDate, s.endDate),
                        child: StudyInfoWidget(entity: s),
                      ),
                    )
                    .toList(),
          ),
        ),
      if (ResumeData.courses.isNotEmpty)
        ChapterWidget(
          header: "КУРСЫ",
          icon: Symbols.workspace_premium,
          content: Column(
            spacing: 12,
            children:
                ResumeData.courses.map((c) => CourseWidget(entity: c)).toList(),
          ),
        ),
      if (ResumeData.projects.isNotEmpty)
        ChapterWidget(
          header: "ПРОЕКТЫ",
          icon: Symbols.code,
          content: Column(
            spacing: 18,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                ResumeData.projects
                    .map((p) => ProjectWidget(entity: p))
                    .toList(),
          ),
        ),
    ];

    final narrow =
        MediaQuery.sizeOf(context).width < AppSizes.twoColumnBreakpoint;

    return Padding(
      padding: narrow ? AppSizes.mainPaddingsNarrow : AppSizes.mainPaddings,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: AppSizes.intergroupPadding + 8,
        children: sections,
      ),
    );
  }
}
