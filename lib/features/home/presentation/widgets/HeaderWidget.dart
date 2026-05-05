import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../styles/sizes.dart';

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
                  "РЫБАЛКИН БОГДАН\nАЛЕКСАНДРОВИЧ",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),

                Text(
                  "PYTHON-РАЗРАБОТЧИК",
                  style: TextStyle(
                    color: theme.outlineVariant,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    height: 1,
                  ),
                ),
                Row(
                  children: [
                    Icon(Symbols.place, size: 14, weight: 700),
                    Text("Москва, м. Петровско-Разумовская"),
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
