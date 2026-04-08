import 'package:flutter/material.dart';
import 'package:resume/styles/sizes.dart';

import '../widgets/MyInfoWidget.dart';
import '../widgets/WorkInfoWidget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppSizes.mainCardWight,
        child: Row(
          children: [
            Container(
              width: AppSizes.mainCardWight / 3,
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainerHigh,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(AppSizes.mainCardBorderRadius),
                ),
              ),
              child: MyInfoWidget(),
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceContainer,
                border: Border(
                  left: BorderSide(
                    color: Theme.of(context).colorScheme.outlineVariant,
                    width: 2.0, // Толщина только снизу
                  ),
                ),
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(AppSizes.mainCardBorderRadius),
                ),
              ),
              width: AppSizes.mainCardWight / 3 * 2,
              child: WorkInfoWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
