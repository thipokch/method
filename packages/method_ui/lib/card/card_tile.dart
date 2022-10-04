import 'package:flutter/material.dart';
import 'package:method_ui/emoji/riso_emoji.dart';

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
          ? MtRisoEmoji(
              emoji: emoji!,
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
