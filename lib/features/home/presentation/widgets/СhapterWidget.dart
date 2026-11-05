import 'package:flutter/material.dart';

import '../../../../styles/themes.dart';

/// Секция основной колонки: заголовок (с иконкой), линия и содержимое.
class ChapterWidget extends StatelessWidget {
  final String header;
  final IconData? icon;
  final Widget content;

  const ChapterWidget({
    super.key,
    required this.header,
    required this.content,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 10,
          children: [
            if (icon != null)
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.secondaryContainer,
                ),
                child: Icon(icon, size: 16, color: theme.primary),
              ),
            Text(
              header,
              style: AppTextStyles.heading(context).copyWith(letterSpacing: 0.6),
            ),
          ],
        ),
        SizedBox(height: 8),
        Container(height: 1, color: theme.outlineVariant),
        SizedBox(height: 16),
        content,
      ],
    );
  }
}
