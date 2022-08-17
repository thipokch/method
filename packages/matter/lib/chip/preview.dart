import 'package:flutter/material.dart';

import '../preview_helper.dart';
import 'chip_emoji.dart';
import 'chip_text.dart';

class ChipPreview extends StatelessWidget {
  const ChipPreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const Widget _divider = Preview.rowDivider;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChipEmoji(
              emoji: "😴",
              selected: false,
              onSelected: (_) {},
            ),
            ChipEmoji(
              emoji: "🤩",
              selected: true,
              onSelected: (_) {},
            ),
            const ChipEmoji(
              emoji: "⛔️",
              selected: false,
            ),
          ],
        ),
        _divider,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ChipText(
              text: "unselected",
              selected: false,
              onSelected: (_) {},
            ),
            ChipText(
              text: "selected",
              selected: true,
              onSelected: (_) {},
            ),
            const ChipText(
              text: "disabled",
              selected: false,
            ),
          ],
        ),
      ],
    );
  }
}
