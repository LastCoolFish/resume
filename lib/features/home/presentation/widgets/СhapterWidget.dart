import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../styles/sizes.dart';

class ChapterWidget extends StatelessWidget {
  final String header;
  final Widget content;

  const ChapterWidget({super.key, required this.header, required this.content});

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(
            fontSize: AppSizes.chapterHeaderTextSize,
            color: theme.outline,
            fontWeight: FontWeight.bold,
            // Family
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 10,
              child: Container(height: 2, color: theme.outlineVariant),
            ),
            Expanded(
              flex: 90,
              child: Container(
                height: 2,
                color: theme.surfaceContainerHigh,
              ),
            ),
          ],
        ),

        SizedBox(height: 8),
        content,
      ],
    );
  }
}
