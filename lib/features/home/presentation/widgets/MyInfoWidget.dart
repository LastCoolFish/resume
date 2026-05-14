import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:resume/features/home/presentation/widgets/%D0%A1hapterWidget.dart';
import 'package:resume/styles/sizes.dart';
import 'package:url_launcher/url_launcher.dart';

class MyInfoWidget extends StatelessWidget {
  static const List<String> skills = [
    "Python",
    "PostGreSQL",
    "Flutter",
    "Dart",
    "Pandas",
    "Fast API",
    "Rest API",
  ];

  static const List<(IconData, String, String?)> contacts = [
    (Symbols.place, "г. Москва", null),
    (Symbols.captive_portal, "https://rybalkin.dev", "https://rybalkin.dev"),
    (Symbols.send, "@IT_Fish", "https://t.me/IT_Fish"),
  ];

  const MyInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ChapterWidget(
            horizontalPadding: 4,
            header: "КОНТАКТЫ",
            content: Column(
              children:
                  contacts
                      .map(
                        (contact) => ContactsRow(
                          icon: contact.$1,
                          text: contact.$2,
                          url: contact.$3,
                        ),
                      )
                      .toList(),
            ),
          ),

          SizedBox(height: AppSizes.intragroupPadding),
          ChapterWidget(
            horizontalPadding: 4,
            header: "КЛЮЧЕВЫЕ НАВЫКИ",
            content: Padding(
              padding: EdgeInsets.symmetric(horizontal: 0),
              child: Wrap(
                spacing: 4,
                runSpacing: 8,
                children:
                    skills.map((text) => SkillContainer(text: text)).toList(),
              ),
            ),
          ),
          SizedBox(height: AppSizes.intragroupPadding),
          ChapterWidget(
            horizontalPadding: 4,
            header: "ЯЗЫКИ",
            content: Icon(Symbols.language),
          ),
        ],
      ),
    );
  }
}

class SkillContainer extends StatelessWidget {
  final String text;

  const SkillContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 6, right: 8, top: 1, bottom: 2),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.all(
          Radius.circular(AppSizes.skillsContainerBorderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: AppSizes.baseTextSize,
          color: Theme.of(context).colorScheme.surfaceContainerHigh,
        ),
      ),
    );
  }
}

class ContactsRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? url;

  const ContactsRow({
    super.key,
    required this.icon,
    required this.text,
    this.url,
  });

  void _launchUrl() async {
    Uri url = Uri.parse(this.url!);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: AppSizes.accentTextSize,
          weight: 700,
          color: Theme.of(context).colorScheme.outline,
        ),
        SizedBox(width: 4),
        GestureDetector(
          onTap: _launchUrl,
          child: Text(
            text,
            style: TextStyle(
              fontSize: AppSizes.baseTextSize,
              color: Theme.of(context).colorScheme.outline,
            ),
          ),
        ),
      ],
    );
  }
}
