import 'package:element/element_icon.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  const CardTile({
    Key? key,
    required this.emoji,
    required this.title,
    required this.description,
    this.onTap,
  }) : super(key: key);

  final String emoji;
  final String title;
  final String description;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    // final colorScheme = Theme.of(context).colorScheme;

    return ListTile(
      onTap: onTap,
      leading: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            emoji,
            style: ElementScale.emojiL,
          ),
        ],
      ),
      title: Text(
        title,
        style: textTheme.titleMedium,
      ),
      subtitle: Text(description, style: textTheme.labelMedium),
      trailing: const Icon(
        ElementIcon.add,
        size: ElementScale.iconL,
      ),
      // onTap: () {},
    );
  }
}
