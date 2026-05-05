import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:resume/features/home/presentation/widgets/%D0%A1hapterWidget.dart';
import 'package:resume/styles/sizes.dart';
import 'package:timelines_plus/timelines_plus.dart';

class WorkInfoWidget extends StatelessWidget {
  const WorkInfoWidget({super.key});

  // Profession Name, Company, Date start, Date end, Description
  static List<(String, String, DateTime, DateTime?, String)> works = [
    (
      "Flutter-разработчик",
      "ООО Классрум",
      DateTime(2025, 9, 1),
      null,
      "Занимался разработкой мобильного приложения\n- Занимался разработкой мобильного приложения",
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
            content: FixedTimeline.tileBuilder(
              mainAxisSize: MainAxisSize.min,
              theme: TimelineThemeData(
                color: colorScheme.surfaceContainer,
                indicatorPosition: 0.05,
                nodePosition: 0,
                indicatorTheme: IndicatorThemeData(
                  size: 10,
                ),
              ),
              builder: TimelineTileBuilder.connected(
                itemCount: works.length,
                indicatorBuilder:
                    (context, index) => ContainerIndicator(
                      child: Row(
                        children: [
                          // SizedBox(height: 20,),
                          Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: colorScheme.outlineVariant,
                                // Цвет обводки
                                width: 2.0,
                              ),
                            ),
                            // child: Icon(
                            //   Symbols.check_rounded,
                            //   weight: 700,
                            //   color: colorScheme.outlineVariant,
                            // ),
                          ),
                        ],
                      ),
                    ),
                connectorBuilder:
                    (context, index, type) =>
                        SolidLineConnector(color: colorScheme.outlineVariant),
                contentsBuilder: (context, index) {
                  (String, String, DateTime, DateTime?, String) work =
                      works[index];
                  DateFormat format = DateFormat("MMMyyyy", "ru");

                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              work.$1,
                              style: TextStyle(
                                fontSize: AppSizes.chapterHeaderTextSize,
                                fontWeight: FontWeight.bold,
                                color: colorScheme.outline,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  work.$2,
                                  style: TextStyle(
                                    fontSize: AppSizes.accentTextSize,
                                    color: colorScheme.outlineVariant,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "${format.format(work.$3)} - ${work.$4 != null ? format.format(work.$4!) : 'По настоящее время'}",
                                  style: TextStyle(
                                    fontSize: AppSizes.accentTextSize,
                                    color: colorScheme.outline,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 8),

                        MarkdownBody(
                          data: work.$5,
                          styleSheet: MarkdownStyleSheet.fromTheme(
                            Theme.of(context),
                          ),
                          // styleSheet: MarkdownStyleSheet(
                          //   p: TextStyle(
                          //     color: colorScheme.outline,
                          //     fontSize: AppSizes.baseTextSize,
                          //   ),
                          //   listBullet:
                          //   TextStyle(
                          //     color: colorScheme.outline,
                          //     fontSize: AppSizes.baseTextSize,
                          //   ),
                          // ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),

          SizedBox(height: AppSizes.intergroupPadding),
          ChapterWidget(header: "ОБРАЗОВАНИЕ", content: Icon(Symbols.work)),
          SizedBox(height: AppSizes.intergroupPadding),
          ChapterWidget(header: "КУРСЫ", content: Icon(Symbols.work)),
          SizedBox(height: AppSizes.intergroupPadding),
          ChapterWidget(header: "ПРОЕКТЫ", content: Icon(Symbols.work)),
        ],
      ),
    );
  }
}
