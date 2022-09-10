import 'package:element/element_scale.dart';
import 'package:emoji/enums.dart';
import 'package:emoji/twemoji_text.dart';
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
      leading: emoji != null
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TwemojiText(
                  text: emoji!,
                  twemojiFormat: TwemojiFormat.webp,
                  style: ElementScale.emojiXL,
                ),
              ],
            )
          : null,
      title: Text(
        title,
        style: textTheme.titleMedium,
      ),
      subtitle: Text(description, style: textTheme.labelMedium),
      trailing: trailing,
      // onTap: () {},
    );
  }
}
