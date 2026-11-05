import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../styles/themes.dart';

class ChapterWidget extends StatelessWidget {
  final String header;
  final Widget content;

  final double horizontalPadding;

  const ChapterWidget({super.key, required this.header, required this.content, this.horizontalPadding = 8});

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: AppTextStyles.heading(context).copyWith(letterSpacing: 0.6),
        ),
        SizedBox(height: 6),
        Container(height: 1, color: theme.outlineVariant),
        SizedBox(height: 12),
        Padding(padding: EdgeInsets.symmetric(horizontal: horizontalPadding), child: content),
      ],
    );
  }
}
