import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../core/open_url.dart';
import '../../../../styles/sizes.dart';
import '../../domain/models/ProjectEntity.dart';
import 'TagChip.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectEntity entity;

  const ProjectWidget({super.key, required this.entity});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final url = entity.url;

    final title = Row(
      mainAxisSize: MainAxisSize.min,
      spacing: 6,
      children: [
        Text(
          entity.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: url != null ? scheme.primary : scheme.outline,
          ),
        ),
        if (url != null)
          Icon(Symbols.open_in_new, size: 15, color: scheme.primary),
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (url == null)
          title
        else
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(onTap: () => openUrl(url), child: title),
          ),
        const SizedBox(height: 4),
        Text(
          entity.description,
          style: TextStyle(fontSize: AppSizes.accentTextSize),
        ),
        if (entity.stack.isNotEmpty) ...[
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children:
                entity.stack
                    .map(
                      (s) => TagChip(
                        text: s,
                        background: scheme.secondaryContainer,
                        foreground: scheme.onSecondaryContainer,
                      ),
                    )
                    .toList(),
          ),
        ],
      ],
    );
  }
}
