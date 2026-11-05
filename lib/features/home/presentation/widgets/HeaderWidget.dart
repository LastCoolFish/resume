import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../styles/sizes.dart';
import '../../../../styles/themes.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme theme = Theme.of(context).colorScheme;

    return IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            flex: 70,
            child: Column(
              spacing: 6,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Рыбалкин Богдан\nАлександрович",
                  style: AppTextStyles.heading(
                    context,
                    size: AppSizes.nameTextSize,
                    height: 1.25,
                  ),
                ),
                Text(
                  "Python-разработчик",
                  style: TextStyle(
                    color: theme.primary,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  spacing: 4,
                  children: [
                    Icon(
                      Symbols.place,
                      size: 16,
                      weight: 700,
                      color: theme.onSurfaceVariant,
                    ),
                    Text(
                      "Москва, м. Петровско-Разумовская",
                      style: TextStyle(color: theme.onSurfaceVariant),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 30,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  "images/icon.jpg",
                  height: 200.0 * 0.8,
                  width: 150.0 * 0.8,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
