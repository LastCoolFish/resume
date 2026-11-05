import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';

import '../../../../styles/sizes.dart';
import '../../domain/models/WorkExperienceEntity.dart';

/// Содержимое записи об опыте. Период выводит таймлайн.
class WorkExperienceWidget extends StatelessWidget {
  final WorkExperienceEntity entity;

  const WorkExperienceWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 6),
        MarkdownBody(
          data: entity.description,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            p: textTheme.bodyMedium?.copyWith(
              fontSize: AppSizes.accentTextSize,
            ),
            listBullet: textTheme.bodyMedium?.copyWith(
              color: colorScheme.primary,
              fontSize: AppSizes.accentTextSize,
            ),
          ),
        ),
      ],
    );
  }
}
