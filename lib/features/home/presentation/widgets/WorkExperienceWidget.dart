import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:intl/intl.dart';

import '../../../../styles/sizes.dart';
import '../../domain/models/WorkExperienceEntity.dart';

class WorkExperienceWidget extends StatelessWidget {
  final WorkExperienceEntity entity;

  const WorkExperienceWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    DateFormat format = DateFormat("MMMyyyy", "ru");

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            entity.position,
            style: TextStyle(
              fontSize: AppSizes.chapterHeaderTextSize,
              fontWeight: FontWeight.bold,
              color: colorScheme.outline,
            ),
          ),

          SizedBox(height: 4),
          Row(
            children: [
              Text(
                entity.company.name,
                style: TextStyle(
                  fontSize: AppSizes.accentTextSize,
                  color: colorScheme.outlineVariant,
                ),
              ),
              Spacer(),
              Text(
                "${format.format(entity.startDate)} - ${entity.endDate != null ? format.format(entity.endDate!) : 'По настоящее время'}",
                style: TextStyle(
                  fontSize: AppSizes.accentTextSize,
                  color: colorScheme.outlineVariant,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          MarkdownBody(
            data: entity.description,
            styleSheet: MarkdownStyleSheet.fromTheme(
              Theme.of(context),
            ).copyWith(
              p: Theme.of(context).textTheme.bodyMedium?.copyWith(
                height: 1, // Увеличивает межстрочный интервал
                fontSize: AppSizes.accentTextSize,
              ),
              // Если нужно изменить интервал в списках
              listBullet: Theme.of(context).textTheme.bodyMedium?.copyWith(
                height: 0.5,
                fontSize: AppSizes.accentTextSize,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
