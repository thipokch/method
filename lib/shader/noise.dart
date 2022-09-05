import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'noise_paint.dart';
import 'noise_shader_sprv.dart';

class Noise extends StatefulWidget {
  const Noise({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => NoiseState();
}

class NoiseState extends State<Noise> {
  @override
  Widget build(BuildContext context) {
    Timer.periodic(
      const Duration(seconds: 1),
      // ignore: no-empty-block
      (Timer t) => setState(() {}),
    );

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
            painter: NoiseShaderPainter(snapshot.data!),
          ),
        );
      }),
    );
  }
}
