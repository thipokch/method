import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'airbrush.dart';

class AirbrushPainter extends CustomPainter {
  final BuildContext context;
  final double frame;
  final Color colorLighter;
  final Color colorLight;
  final Color colorDark;
  final Color colorDarker;
  ImageShader? imageShader;
  final double? height;
  final double? width;

  AirbrushPainter({
    required this.context,
    required this.frame,
    required this.colorLighter,
    required this.colorLight,
    required this.colorDark,
    required this.colorDarker,
    this.imageShader,
    this.height,
    this.width,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final AirbrushFP fp = Airbrush.of(context)!;
    final colors = [colorLighter, colorLight, colorDark, colorDarker];

    final floatUniforms = Float32List.fromList([
      frame,
      height ?? size.width,
      width ?? size.height,
      ...colors
          .map((e) => <double>[
                e.red.toDouble(),
                e.green.toDouble(),
                e.blue.toDouble(),
              ])
          .expand((e) => e)
          .toList()
          .map((e) => e / 255.0),
    ]);

    final shader = imageShader != null
        ? fp.effectFp.shader(
            floatUniforms: floatUniforms,
            samplerUniforms: [imageShader!],
          )
        : fp.canvasFp.shader(
            floatUniforms: floatUniforms,
          );

    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..shader = shader,
    );
  }

  @override
  bool shouldRepaint(AirbrushPainter oldDelegate) => false;
}
