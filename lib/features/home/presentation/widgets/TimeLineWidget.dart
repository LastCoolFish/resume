import 'package:flutter/material.dart';

class TimelineItem {
  /// Период (допускает перенос строки `\n`).
  final String period;
  final Widget child;

  const TimelineItem({required this.period, required this.child});
}

/// Вертикальный таймлайн. На широком экране даты стоят слева от линии,
/// на узком — над содержимым записи.
class TimeLineWidget extends StatelessWidget {
  final List<TimelineItem> items;

  static const double _dateColumnWidth = 128;
  static const double _railWidth = 28;
  static const double _dotSize = 12;
  static const double _itemGap = 24;
  static const double _narrowBreakpoint = 480;

  const TimeLineWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return LayoutBuilder(
      builder: (context, constraints) {
        final wide = constraints.maxWidth >= _narrowBreakpoint;

        return Column(
          children: [
            for (var i = 0; i < items.length; i++)
              wide
                  ? _wideRow(scheme, items[i], isLast: i == items.length - 1)
                  : _narrowRow(scheme, items[i], isLast: i == items.length - 1),
          ],
        );
      },
    );
  }

  TextStyle _periodStyle(ColorScheme scheme) => TextStyle(
    fontSize: 13,
    height: 1.5,
    fontWeight: FontWeight.w600,
    color: scheme.primary,
  );

  Widget _wideRow(
    ColorScheme scheme,
    TimelineItem item, {
    required bool isLast,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: _dateColumnWidth,
            child: Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text(
                item.period,
                textAlign: TextAlign.right,
                style: _periodStyle(scheme),
              ),
            ),
          ),
          _rail(scheme, topGap: 6, isLast: isLast),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : _itemGap),
              child: item.child,
            ),
          ),
        ],
      ),
    );
  }

  Widget _narrowRow(
    ColorScheme scheme,
    TimelineItem item, {
    required bool isLast,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _rail(scheme, topGap: 4, isLast: isLast),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : _itemGap),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.period.replaceAll("\n", " "),
                    style: _periodStyle(scheme),
                  ),
                  const SizedBox(height: 2),
                  item.child,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rail(
    ColorScheme scheme, {
    required double topGap,
    required bool isLast,
  }) {
    return SizedBox(
      width: _railWidth,
      child: Column(
        children: [
          SizedBox(height: topGap),
          Container(
            width: _dotSize,
            height: _dotSize,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: scheme.surfaceContainer,
              border: Border.all(color: scheme.primary, width: 2),
            ),
          ),
          if (!isLast)
            Expanded(child: Container(width: 2, color: scheme.primary)),
        ],
      ),
    );
  }
}
