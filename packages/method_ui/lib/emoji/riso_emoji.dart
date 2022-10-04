import 'package:flutter/material.dart';

import '../airbrush/airbrush_gradient_image.dart';
import '../airbrush/airbrush_painter.dart';

class MtRisoEmoji extends StatelessWidget {
  final String emoji;
  final double? height;
  final double? width;

  const MtRisoEmoji({
    super.key,
    required this.emoji,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<ImageShader>(
        future: loadEmojiShader(emoji),
        builder: (context, snapshot) {
          final themeData = Theme.of(context);
          final colorScheme = themeData.colorScheme;
          final isLight = themeData.brightness == Brightness.light;

          return SizedBox(
            height: height ?? 32,
            width: width ?? 32,
            child: snapshot.hasData
                ? CustomPaint(
                    painter: AirbrushPainter(
                      context: context,
                      frame: 190,
                      colorLighter: isLight
                          ? colorScheme.primaryContainer
                          : colorScheme.primary,
                      colorLight: isLight
                          ? colorScheme.secondaryContainer
                          : colorScheme.secondary,
                      colorDark: isLight
                          ? colorScheme.background
                          : colorScheme.onBackground,
                      colorDarker:
                          isLight ? colorScheme.primary : colorScheme.onPrimary,
                      height: height,
                      width: width,
                      imageShader: snapshot.data,
                    ),
                  )
                : Container(),
          );
        },
      );
}
