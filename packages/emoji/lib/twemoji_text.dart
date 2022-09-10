import 'package:flutter/material.dart';

import 'enums.dart';
import 'twemoji_text_span.dart';

/// returns a widget with rendered text with twitter emojis
class TwemojiText extends StatelessWidget {
  const TwemojiText({
    Key? key,
    required this.text,
    this.style,
    this.maxLines,
    this.emojiFontMultiplier = 1.0,
    this.twemojiFormat = TwemojiFormat.svg,
  }) : super(key: key);

  /// The Text
  final String text;

  /// Describes the font style and the emoji size
  final TextStyle? style;

  /// Multiplie the emoji size, by default it's 1
  final double emojiFontMultiplier;

  /// Maximal lines to be rendered
  final int? maxLines;

  /// The format of the emoji image it can be [TwemojiFormat.webp]
  /// 72*72 png or [TwemojiFormat.svg] svg by default.
  final TwemojiFormat twemojiFormat;
  @override
  Widget build(BuildContext context) => RichText(
        text: TwemojiTextSpan(
          text: text,
          emojiFontMultiplier: emojiFontMultiplier,
          twemojiFormat: twemojiFormat,
          style: style,
        ),
        maxLines: maxLines,
      );
}
