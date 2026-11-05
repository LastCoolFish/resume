import 'package:flutter/material.dart';

import '../../../../core/open_url.dart';
import '../../../../styles/sizes.dart';
import '../../domain/models/CourseEntity.dart';

class CourseWidget extends StatelessWidget {
  final CourseEntity entity;

  const CourseWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final url = entity.url;
    final years =
        entity.endYear == null
            ? "${entity.startYear} — н. в."
            : entity.endYear == entity.startYear
            ? "${entity.startYear}"
            : "${entity.startYear} — ${entity.endYear}";

    final title = Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: entity.name,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: url != null ? scheme.primary : scheme.outline,
            ),
          ),
          TextSpan(
            text: " — ${entity.provider}",
            style: TextStyle(color: scheme.onSurfaceVariant),
          ),
        ],
      ),
      style: const TextStyle(fontSize: 16),
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child:
              url == null
                  ? title
                  : MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () => openUrl(url),
                      child: title,
                    ),
                  ),
        ),
        const SizedBox(width: 12),
        Text(
          years,
          style: TextStyle(
            fontSize: AppSizes.baseTextSize,
            fontWeight: FontWeight.w600,
            color: scheme.primary,
          ),
        ),
      ],
    );
  }
}
