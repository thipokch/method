// ignore_for_file: unnecessary_import

import 'package:emoji/constants.dart';
import 'package:emoji/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matter/airbrush/airbrush_painter.dart';

class GradientAirbrushImage extends StatelessWidget {
  final String assetString;
  final double frame;
  final Color colorLighter;
  final Color colorLight;
  final Color colorDark;
  final Color colorDarker;
  final double? height;
  final double? width;

  const GradientAirbrushImage({
    super.key,
    required this.assetString,
    required this.frame,
    required this.colorLighter,
    required this.colorLight,
    required this.colorDark,
    required this.colorDarker,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<ImageShader>(
        future: loadImageShader(assetString),
        builder: (context, snapshot) => snapshot.hasData
            ? SizedBox(
                height: height,
                width: width,
                child: CustomPaint(
                  painter: AirbrushPainter(
                    context: context,
                    frame: frame,
                    colorLighter: colorLighter,
                    colorLight: colorLight,
                    colorDark: colorDark,
                    colorDarker: colorDarker,
                    height: height,
                    width: width,
                    imageShader: snapshot.data,
                  ),
                ),
              )
            : SizedBox(
                height: height,
                width: width,
              ),
      );
}

class AirbrushEmoji extends StatelessWidget {
  final String emoji;
  final double? height;
  final double? width;

  const AirbrushEmoji({
    super.key,
    required this.emoji,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<ImageShader>(
        future: loadEmojiShader(emoji),
        builder: (context, snapshot) => snapshot.hasData
            ? SizedBox(
                height: height,
                width: width,
                child: CustomPaint(
                  painter: AirbrushPainter(
                    context: context,
                    frame: 190,
                    colorLighter:
                        Theme.of(context).colorScheme.primaryContainer,
                    colorLight:
                        Theme.of(context).colorScheme.secondaryContainer,
                    colorDark: Theme.of(context).colorScheme.background,
                    colorDarker: Theme.of(context).colorScheme.primary,
                    height: height,
                    width: width,
                    imageShader: snapshot.data,
                  ),
                ),
              )
            : SizedBox(
                height: height,
                width: width,
                child: const CupertinoActivityIndicator(),
              ),
      );
}

/// Loads JPEG image and the [FragmentProgram]
Future<ImageShader> loadImageShader(String assetString) async {
  final asset = await rootBundle.load(assetString);
  final image = await decodeImageFromList(asset.buffer.asUint8List());

  return ImageShader(
    image,
    // Specify how image repetition is handled for x and y dimension
    TileMode.repeated,
    TileMode.repeated,
    // Transformation matrix (identity matrix = no transformation)
    Matrix4.identity().storage,
  );
}

Future<ImageShader> loadEmojiShader(String emoji) async {
  var cleanEmoji = '';
  emoji.splitMapJoin(
    regex,
    onMatch: (m) => cleanEmoji = m.input.substring(m.start, m.end),
  );
  final unicode = emojiToUnicode(cleanEmoji);

  final asset =
      await rootBundle.load("packages/emoji/assets/webp/$unicode.webp");
  final image = await decodeImageFromList(asset.buffer.asUint8List());

  return ImageShader(
    image,
    // Specify how image repetition is handled for x and y dimension
    TileMode.repeated,
    TileMode.repeated,
    // Transformation matrix (identity matrix = no transformation)
    Matrix4.identity().storage,
  );
}