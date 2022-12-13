import 'package:flutter/material.dart';

import 'enums.dart';
import 'emoji_text_span.dart';

/// returns a widget with rendered text with twitter emojis
class MtEmojiText extends StatelessWidget {
  const MtEmojiText({
    Key? key,
    required this.text,
    this.style,
    this.maxLines,
    this.emojiFontMultiplier = 1.0,
    this.twemojiFormat = MtEmojiFormat.svg,
  }) : super(key: key);

  /// The Text
  final String text;

  /// Describes the font style and the emoji size
  final TextStyle? style;

  /// Multiplie the emoji size, by default it's 1
  final double emojiFontMultiplier;

  /// Maximal lines to be rendered
  final int? maxLines;

  /// The format of the emoji image it can be [MtEmojiFormat.webp]
  /// 72*72 png or [MtEmojiFormat.svg] svg by default.
  final MtEmojiFormat twemojiFormat;
  @override
  Widget build(BuildContext context) => RichText(
        text: MtEmojiTextSpan(
          text: text,
          emojiFontMultiplier: emojiFontMultiplier,
          twemojiFormat: twemojiFormat,
          style: style,
        ),
        maxLines: maxLines,
      );
}
