// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:method_core/model/session.dart';
import 'package:method_ui/card/card.dart';
import 'package:method_ui/card/card_editing.dart';
import 'package:method_ui/emoji/riso_emoji.dart';

class SessionCardPreview extends StatelessWidget {
  final Session session;
  final GestureTapCallback? onTap;

  const SessionCardPreview({
    super.key,
    required this.session,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
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

    return Column(
      children: [
        ListTile(
          leading: MtRisoEmoji(
            emoji: session.template.icon,
          ),
          title: Text(session.template.name),
          // subtitle: Text(session.id),
          onTap: onTap,
        ),
        if (entryIndex >= 0 && defIndex >= 0)
          MtCard(
            text: session.definitions[entryIndex]!.definitions[defIndex]!
                .maybeMap(
              note: (value) => value.data,
              orElse: () => throw UnimplementedError(),
            ),
          ),
      ],
    );
  }
}
