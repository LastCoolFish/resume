import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../styles/sizes.dart';

class SkillWidget extends StatefulWidget {
  final String skillName;
  final List<String> additionalSkills;

  const SkillWidget({
    super.key,
    required this.skillName,
    required this.additionalSkills,
  });

  @override
  State<StatefulWidget> createState() => SkillWidgetState();
}

class SkillWidgetState extends State<SkillWidget> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          children: [
            GestureDetector(
              onTap:
                  () => setState(() {
                    isExpand = !isExpand;
                  }),
              child: Icon(
                size: 20,
                weight: 700,
                isExpand
                    ? Symbols.keyboard_arrow_down
                    : Symbols.keyboard_arrow_right,
              ),
            ),

            Text(
              widget.skillName,
              style: TextStyle(
                fontSize: AppSizes.accentTextSize,
                color: colorScheme.outline,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        if (isExpand)
          Padding(
            padding: EdgeInsets.only(left: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  widget.additionalSkills
                      .map(
                        (text) => Column(
                          children: [
                            Text(
                              "• $text",
                              style: TextStyle(
                                fontSize: AppSizes.baseTextSize,
                                color: colorScheme.outline,
                              ),
                            ),
                            SizedBox(height: 2),
                          ],
                        ),
                      )
                      .toList(),
            ),
          ),

        // ListView.builder(
        //
        //   padding: EdgeInsets.only(left: 8),
        //   itemCount: widget.additionalSkills.length,
        //   itemBuilder: (BuildContext context, int index) {
        //     return Text(
        //       widget.additionalSkills[index],
        //       style: TextStyle(
        //         fontSize: AppSizes.baseTextSize,
        //         color: colorScheme.outline,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     );
        //   },
        // ),
      ],
    );
  }
}
