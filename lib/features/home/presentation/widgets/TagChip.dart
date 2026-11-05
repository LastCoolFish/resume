import 'package:flutter/material.dart';

import '../../../../styles/sizes.dart';

/// Небольшая плашка (навык, технология).
class TagChip extends StatelessWidget {
  final String text;
  final Color background;
  final Color foreground;

  const TagChip({
    super.key,
    required this.text,
    required this.background,
    required this.foreground,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 3),
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.circular(
          AppSizes.skillsContainerBorderRadius,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: AppSizes.baseTextSize - 1,
          fontWeight: FontWeight.w600,
          color: foreground,
          height: 1.3,
        ),
      ),
    );
  }
}
