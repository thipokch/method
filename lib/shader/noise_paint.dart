import 'dart:typed_data';
import 'dart:ui';
import 'package:flutter/material.dart';

class NoiseShaderPainter extends CustomPainter {
  NoiseShaderPainter(
    this.fragmentProgram,
    this.frame,
    this.colorRight,
    this.colorTop,
    this.colorBottom,
    this.colorLeft,
  );

  final FragmentProgram fragmentProgram;
  final double frame;
  final Color colorRight; // Right
  final Color colorTop; // Top
  final Color colorBottom; // Bottom
  final Color colorLeft; // Left

  @override
  void paint(Canvas canvas, Size size) {
    // /// Create paint using a shader
    // final paint = Paint()..shader = fragmentProgram.shader();

    // /// Draw a rectangle with the shader-paint
    // canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

    final colors = [colorRight, colorTop, colorBottom, colorLeft];

    final shader = fragmentProgram.shader(
      floatUniforms: Float32List.fromList([
        frame,
        // Size
        size.width,
        size.height,
        ...colors
            .map((e) => <double>[
                  e.red.toDouble(),
                  e.green.toDouble(),
                  e.blue.toDouble(),
                ])
            .expand((e) => e)
            .toList()
            .map((e) => e / 255.0),
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
