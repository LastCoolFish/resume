import 'package:flutter/material.dart';

import '../../../../core/open_url.dart';
import '../../../../styles/sizes.dart';
import '../../../../styles/themes.dart';
import '../../data/resume_data.dart';
import '../../domain/models/LanguageEntity.dart';
import 'TagChip.dart';

/// Цветной сайдбар: фото, имя, контакты, навыки, языки.
class SidebarWidget extends StatelessWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;

    return Container(
      color: scheme.primaryContainer,
      padding: AppSizes.sidebarPaddings,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(child: _Avatar(borderColor: scheme.onPrimaryContainer)),
          const SizedBox(height: 20),
          Text(
            ResumeData.name,
            textAlign: TextAlign.center,
            style: AppTextStyles.heading(
              context,
              size: AppSizes.nameTextSize,
              height: 1.25,
              color: scheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            ResumeData.job,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: scheme.onPrimaryContainer.withValues(alpha: 0.75),
            ),
          ),
          const SizedBox(height: 32),
          _SidebarSection(
            header: "КОНТАКТЫ",
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  ResumeData.contacts
                      .map((c) => _ContactRow(contact: c))
                      .toList(),
            ),
          ),
          const SizedBox(height: AppSizes.intergroupPadding),
          _SidebarSection(
            header: "КЛЮЧЕВЫЕ НАВЫКИ",
            child: Wrap(
              spacing: 6,
              runSpacing: 6,
              children:
                  ResumeData.skills
                      .map(
                        (s) => TagChip(
                          text: s,
                          background: scheme.onPrimaryContainer.withValues(
                            alpha: 0.14,
                          ),
                          foreground: scheme.onPrimaryContainer,
                        ),
                      )
                      .toList(),
            ),
          ),
          const SizedBox(height: AppSizes.intergroupPadding),
          _SidebarSection(
            header: "ЯЗЫКИ",
            child: Column(
              spacing: 10,
              children:
                  ResumeData.languages
                      .map((l) => _LanguageRow(language: l))
                      .toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  final Color borderColor;

  const _Avatar({required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.avatarSize,
      height: AppSizes.avatarSize,
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor.withValues(alpha: 0.85),
          width: 2,
        ),
      ),
      child: ClipOval(
        child: Image.asset(ResumeData.photoAsset, fit: BoxFit.cover),
      ),
    );
  }
}

class _SidebarSection extends StatelessWidget {
  final String header;
  final Widget child;

  const _SidebarSection({required this.header, required this.child});

  @override
  Widget build(BuildContext context) {
    final fg = Theme.of(context).colorScheme.onPrimaryContainer;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: AppTextStyles.heading(
            context,
            size: 13,
            color: fg,
          ).copyWith(letterSpacing: 1),
        ),
        const SizedBox(height: 8),
        Container(height: 1, color: fg.withValues(alpha: 0.25)),
        const SizedBox(height: 14),
        child,
      ],
    );
  }
}

class _ContactRow extends StatelessWidget {
  final ContactItem contact;

  const _ContactRow({required this.contact});

  @override
  Widget build(BuildContext context) {
    final fg = Theme.of(context).colorScheme.onPrimaryContainer;
    final url = contact.url;

    final row = Row(
      children: [
        Icon(contact.icon, size: 18, weight: 600, color: fg.withValues(alpha: 0.75)),
        const SizedBox(width: 10),
        Flexible(
          child: Text(
            contact.text,
            style: TextStyle(
              fontSize: AppSizes.accentTextSize,
              color: fg,
              decoration: url != null ? TextDecoration.underline : null,
              decorationColor: fg.withValues(alpha: 0.5),
            ),
          ),
        ),
      ],
    );

    if (url == null) return row;
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(onTap: () => openUrl(url), child: row),
    );
  }
}

class _LanguageRow extends StatelessWidget {
  final LanguageEntity language;

  const _LanguageRow({required this.language});

  @override
  Widget build(BuildContext context) {
    final fg = Theme.of(context).colorScheme.onPrimaryContainer;

    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                language.name,
                style: TextStyle(
                  fontSize: AppSizes.accentTextSize,
                  fontWeight: FontWeight.w600,
                  color: fg,
                ),
              ),
              Text(
                language.levelLabel,
                style: TextStyle(
                  fontSize: AppSizes.baseTextSize - 1,
                  color: fg.withValues(alpha: 0.7),
                ),
              ),
            ],
          ),
        ),
        Row(
          spacing: 4,
          children: List.generate(LanguageEntity.maxLevel, (i) {
            final filled = i < language.level;
            return Container(
              width: 9,
              height: 9,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: filled ? fg : Colors.transparent,
                border: Border.all(color: fg.withValues(alpha: 0.6), width: 1.2),
              ),
            );
          }),
        ),
      ],
    );
  }
}
