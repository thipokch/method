import 'package:flutter/material.dart';
import 'package:method_core/model/session.dart';
import 'package:method_ui/emoji/riso_emoji.dart';

class SessionCard extends StatelessWidget {
  final Session session;
  final GestureTapCallback? onTap;

  const SessionCard({
    super.key,
    required this.session,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Card(
        clipBehavior: Clip.antiAlias,
        child: ListTile(
          leading: MtRisoEmoji(
            emoji: session.template.icon,
          ),
          title: Text(session.template.name),
          subtitle: Text(session.id),
          onTap: onTap,
        ),
      );
}
