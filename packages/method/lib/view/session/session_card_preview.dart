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
    final lastIndex = session.definitions.lastIndexWhere(
      (entry) => entry.template.maybeMap(
        feedback: (_) => false,
        orElse: () => true,
      ),
    );

    final firstDef = session.definitions.first.definitions.first;

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
        if (lastIndex >= 0 &&
            firstDef.maybeMap(
              note: (_) => true,
              orElse: () => false,
            ))
          MtCard(
            text: firstDef.maybeMap(
              note: (value) => value.data,
              orElse: () => throw UnimplementedError(),
            ),
          ),
      ],
    );
  }
}
