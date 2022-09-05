import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';

class NoiseShaderPainter extends CustomPainter {
  NoiseShaderPainter(this.fragmentProgram);

  final FragmentProgram fragmentProgram;

  @override
  void paint(Canvas canvas, Size size) {
    // /// Create paint using a shader
    // final paint = Paint()..shader = fragmentProgram.shader();

    // /// Draw a rectangle with the shader-paint
    // canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    var time = (DateTime.now().millisecondsSinceEpoch) / 1000.0;

    final shader = fragmentProgram.shader(
      floatUniforms: Float32List.fromList([
        (0.7 * pi) + (sin(pi * time) * (0.3 * pi)),
        size.width,
        size.height,
      ]),
    );

    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      Paint()..shader = shader,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
