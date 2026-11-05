import 'package:flutter/material.dart';
import 'package:resume/features/home/presentation/widgets/HeaderWidget.dart';
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
    ColorScheme theme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              width: AppSizes.mainCardWight,
              decoration: BoxDecoration(
                color: theme.surfaceContainer,
                borderRadius: BorderRadius.circular(
                  AppSizes.mainCardBorderRadius,
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.shadow,
                    blurRadius: 12,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  HeaderWidget(),
                  SizedBox(height: 10),
                  Container(height: 1, color: theme.outlineVariant),
                  SizedBox(height: 20),
                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: (AppSizes.mainCardWight - 66) / 3 * 2,
                          child: WorkInfoWidget(),
                        ),
                        Container(width: 1, color: theme.outlineVariant),
                        SizedBox(
                          width: (AppSizes.mainCardWight - 66) / 3,
                          child: MyInfoWidget(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
