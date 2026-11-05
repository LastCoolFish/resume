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
    DateFormat format = DateFormat("LLLL yyyy", "ru");

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${format.format(entity.startDate)} — ${entity.endDate != null ? format.format(entity.endDate!) : 'настоящее время'}",
            style: TextStyle(
              fontSize: AppSizes.baseTextSize,
              fontWeight: FontWeight.w600,
              color: colorScheme.primary,
            ),
          ),
          SizedBox(height: 2),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: entity.position,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: colorScheme.outline,
                  ),
                ),
                TextSpan(
                  text: " — ${entity.company.name}",
                  style: TextStyle(color: colorScheme.onSurfaceVariant),
                ),
              ],
            ),
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          MarkdownBody(
            data: entity.description,
            styleSheet: MarkdownStyleSheet.fromTheme(
              Theme.of(context),
            ).copyWith(
              p: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontSize: AppSizes.accentTextSize,
              ),
              listBullet: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: colorScheme.primary,
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
