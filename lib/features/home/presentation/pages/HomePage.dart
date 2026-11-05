import 'package:flutter/material.dart';
import 'package:resume/styles/sizes.dart';

import '../widgets/MainColumnWidget.dart';
import '../widgets/SidebarWidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    final radius = BorderRadius.circular(AppSizes.mainCardBorderRadius);

    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: AppSizes.sheetMaxWidth),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: scheme.surfaceContainer,
                borderRadius: radius,
                boxShadow: [
                  BoxShadow(
                    color: scheme.shadow,
                    blurRadius: 12,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: radius,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final wide =
                        constraints.maxWidth >= AppSizes.twoColumnBreakpoint;

                    if (wide) {
                      return const IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              width: AppSizes.sidebarWidth,
                              child: SidebarWidget(),
                            ),
                            Expanded(child: MainColumnWidget()),
                          ],
                        ),
                      );
                    }

                    return const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [SidebarWidget(), MainColumnWidget()],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
