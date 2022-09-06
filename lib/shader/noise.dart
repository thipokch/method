import 'dart:ui';

import 'package:flutter/material.dart';

import 'noise_paint.dart';
import 'noise_shader_sprv.dart';

class Noise extends StatefulWidget {
  const Noise({
    Key? key,
    required this.frame,
    required this.colorA,
    required this.colorB,
    required this.colorC,
    required this.colorD,
  }) : super(key: key);

  final double frame;
  final Color colorC; // Right
  final Color colorB; // Top
  final Color colorD; // Bottom
  final Color colorA; // Left

  @override
  State<StatefulWidget> createState() => NoiseState();
}

class NoiseState extends State<Noise> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FragmentProgram>(
      /// Use the generated loader function here
      future: noiseShaderFragmentProgram(),
      builder: ((context, snapshot) {
        if (!snapshot.hasData) {
          /// Shader is loading
          return const CircularProgressIndicator();
        }

        /// Shader is ready to use
        return SizedBox.expand(
          child: CustomPaint(
            painter: NoiseShaderPainter(
              snapshot.data!,
              widget.frame,
              widget.colorC,
              widget.colorB,
              widget.colorD,
              widget.colorA,
            ),
          ),
        );
      }),
    );
  }
}
