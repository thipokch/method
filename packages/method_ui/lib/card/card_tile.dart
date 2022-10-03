import 'package:method_emoji/enums.dart';
import 'package:method_emoji/twemoji_widget.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    Key? key,
    required this.emoji,
    required this.title,
    required this.description,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  final String? emoji;
  final String title;
  final String description;
  final GestureTapCallback? onTap;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      onTap: onTap,
      leading: emoji != null && emoji!.isNotEmpty
          ? Twemoji(
              emoji: emoji!,
              twemojiFormat: TwemojiFormat.webp,
              width: 42,
              height: 42,
            )
          : null,
      title: Text(
        title,
        style: textTheme.titleMedium,
      ),
      subtitle: Text(
        description,
        style: textTheme.labelSmall,
      ),
      trailing: trailing,
      // onTap: () {},
    );
  }
}