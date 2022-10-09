import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method_core/model/session.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/emoji/emoji.dart';
import 'package:method_ui/emoji/riso_emoji.dart';

class SessionCardPreview<T> extends StatelessWidget {
  final Session session;
  final GestureTapCallback? onTap;
  final Widget? actions;

  const SessionCardPreview({
    super.key,
    required this.session,
    this.actions,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final entryIndex = session.definitions.indexWhere(
      (entry) =>
          entry?.template.maybeMap(
            feedback: (_) => false,
            orElse: () => true,
          ) ??
          false,
    );

    final defIndex = entryIndex < 0
        ? -1
        : session.definitions[entryIndex]!.definitions.indexWhere(
            (def) =>
                def?.maybeMap(
                  note: (_) => true,
                  orElse: () => false,
                ) ??
                false,
          );

    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 1,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius.all(
            SmoothRadius(
              cornerRadius: ElementScale.cornerLarge,
              cornerSmoothing: ElementScale.cornerSmoothFactor,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8.0,
          ),
          child: Column(
            children: [
              ListTile(
                leading: MtRisoEmoji(emoji: session.template.icon),
                title: Text(session.template.name),
                trailing: actions,
              ),
              if (entryIndex >= 0 && defIndex >= 0)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 128.0,
                    horizontal: 8.0,
                  ),
                  child: Center(
                    child: Text(
                      session.definitions[entryIndex]!.definitions[defIndex]!
                          .maybeMap(
                        note: (value) => value.data,
                        orElse: () => throw UnimplementedError(),
                      ),
                      style: textTheme.titleMedium,
                    ),
                  ),
                ),
              if (entryIndex >= 0)
                Wrap(
                  spacing: 10,
                  alignment: WrapAlignment.start,
                  children: session.labels
                      .map<Widget>((e) => Chip(
                            label: Text(e.name),
                            labelStyle: textTheme.labelMedium,
                            avatar: MtEmoji(emoji: e.icon),
                            padding: const EdgeInsets.fromLTRB(10, 6, 5, 6),
                            backgroundColor: colorScheme.surface,
                            shape: const SmoothRectangleBorder(
                              borderRadius: SmoothBorderRadius.all(
                                SmoothRadius(
                                  cornerRadius: ElementScale.cornerLarge,
                                  cornerSmoothing:
                                      ElementScale.cornerSmoothFactor,
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
