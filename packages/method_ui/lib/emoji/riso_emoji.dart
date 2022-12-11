import 'package:flutter/material.dart';
import 'package:method_ui/emoji/emoji.dart';
import 'package:method_ui/riso/riso_painter.dart';
import 'package:method_ui/riso/riso_shader.dart';
import 'package:method_ui/util/image_shader.dart';

class MtRisoEmoji extends StatelessWidget {
  final RisoShader shaders;
  final String emoji;
  final double? height;
  final double? width;

  const MtRisoEmoji({
    super.key,
    required this.shaders,
    required this.emoji,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<ImageShader>(
        future: MtEmoji(emoji: emoji).shader(),
        builder: (context, snapshot) {
          final themeData = Theme.of(context);
          final colorScheme = themeData.colorScheme;
          final isLight = themeData.brightness == Brightness.light;

          return SizedBox(
            height: height ?? 32,
            width: width ?? 32,
            child: snapshot.hasData
                ? CustomPaint(
                    painter: RisoPainter(
                      shaders: shaders,
                      // context: context,
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

extension Shader on MtEmoji {
  Future<ImageShader> shader() =>
      loadImageShader("packages/method_ui/assets/webp/$unicode.webp");
}
