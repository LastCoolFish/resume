import 'package:flutter/material.dart';

import '../../../../styles/sizes.dart';
import '../../domain/models/StudyEntity.dart';

/// Содержимое записи об образовании. Период выводит таймлайн.
class StudyInfoWidget extends StatelessWidget {
  final StudyEntity entity;

  const StudyInfoWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          entity.universityName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: colorScheme.outline,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "${entity.degree}: ${entity.fieldName}",
          style: TextStyle(
            fontSize: AppSizes.accentTextSize,
            color: colorScheme.outline,
          ),
        ),
        Text(
          entity.specialization,
          style: TextStyle(
            fontSize: AppSizes.accentTextSize,
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}
