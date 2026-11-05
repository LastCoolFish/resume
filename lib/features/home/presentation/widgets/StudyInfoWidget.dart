import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../styles/sizes.dart';
import '../../domain/models/StudyEntity.dart';

class StudyInfoWidget extends StatelessWidget {
  final StudyEntity entity;

  const StudyInfoWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    DateFormat format = DateFormat("yyyy", "ru");

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                entity.universityName,
                // style: TextStyle(
                //   fontSize: AppSizes.accentTextSize,
                //   color: colorScheme.outlineVariant,
                // ),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: colorScheme.outline,
                ),
              ),
              Spacer(),
              Text(
                "${format.format(entity.startDate)} — ${entity.endDate != null ? format.format(entity.endDate!) : 'н. в.'}",
                style: TextStyle(
                  fontSize: AppSizes.baseTextSize,
                  fontWeight: FontWeight.w600,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Text(
            "${entity.specialization} - ${entity.degree}",
            style: TextStyle(
              fontSize: AppSizes.accentTextSize,
              color: colorScheme.onSurfaceVariant,
            ),
          ),

          SizedBox(height: 8),
        ],
      ),
    );
  }
}
