import 'package:flutter/material.dart';
import 'package:matter/airbrush/airbrush_gradient_image.dart';

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
          ?
          // Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          AirbrushEmoji(
              emoji: emoji!,
              width: 42,
              height: 42,
            )
          // TwemojiText(
          //   text: emoji!,
          //   twemojiFormat: TwemojiFormat.webp,
          //   style: ElementScale.emojiXL,
          // ),
          //   ],
          // )
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
