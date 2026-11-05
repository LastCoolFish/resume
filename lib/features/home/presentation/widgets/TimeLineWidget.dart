import 'package:flutter/material.dart';
import 'package:timelines_plus/timelines_plus.dart';

class TimeLineWidget extends StatelessWidget {
  final List<Widget> items;

  const TimeLineWidget({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return FixedTimeline.tileBuilder(
      mainAxisSize: MainAxisSize.min,
      theme: TimelineThemeData(
        color: colorScheme.primary,
        indicatorPosition: 0.00,
        nodePosition: 0,
        // nodeItemOverlap: true,
        // indicatorTheme: IndicatorThemeData(size: 10, position: 0.03),
      ),
      builder: TimelineTileBuilder.connected(
        itemCount: items.length,
        indicatorBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 4.0,
                child:
                    index != 0
                        ? SolidLineConnector(color: colorScheme.primary)
                        : null,
              ),

              // 1. Точный отступ сверху в пикселях. Линия будет идти сквозь него.

              // 2. Сам ваш индикатор
              ContainerIndicator(
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: colorScheme.surfaceContainer,
                    border: Border.all(color: colorScheme.primary, width: 2),
                  ),
                ),
              ),
            ],
          );
        },
        connectorBuilder:
            (context, index, type) =>
                SolidLineConnector(color: colorScheme.primary),
        contentsBuilder: (context, index) {
          return Column(children: [items[index], SizedBox(height: 20)]);
        },
      ),
    );
  }
}
