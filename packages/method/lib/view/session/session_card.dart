import 'package:flutter/material.dart';
import 'package:method_core/model/session.dart';
import 'package:method_emoji/enums.dart';
import 'package:method_emoji/twemoji_widget.dart';

class SessionCard extends StatelessWidget {
  final Session session;
  final GestureTapCallback? onTap;

  const SessionCard({
    super.key,
    required this.session,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Twemoji(
          emoji: session.template.icon,
          twemojiFormat: TwemojiFormat.webp,
        ),
        title: Text(session.template.name),
        subtitle: Text(session.id),
        onTap: onTap,
      ),
    );
  }
}
