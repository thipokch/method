import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:matter/airbrush/airbrush_effect_sprv.dart';

import 'airbrush_gradient_canvas_sprv.dart';
import 'airbrush_gradient_effect_sprv.dart';

class Airbrush extends StatelessWidget {
  final Widget child;
  const Airbrush({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => FutureBuilder<AirbrushFP>(
        future: _loadFp(),
        builder: (context, snapshot) => _InheritedAirbrush(
          fp: snapshot.data,
          child: child,
        ),
      );

  static AirbrushFP? of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<_InheritedAirbrush>()?.fp;
}

class _InheritedAirbrush extends InheritedWidget {
  final AirbrushFP? fp;

  const _InheritedAirbrush({
    required super.child,
    this.fp,
  }) : super();

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;
}

class AirbrushFP {
  final FragmentProgram gradientCanvasFp;
  final FragmentProgram gradientEffectFP;
  final FragmentProgram effectFP;

  AirbrushFP(this.gradientCanvasFp, this.gradientEffectFP, this.effectFP);
}

Future<AirbrushFP> _loadFp() async {
  return AirbrushFP(
    await airbrushGradientCanvasFragmentProgram(),
    await airbrushGradientEffectFragmentProgram(),
    await airbrushEffectFragmentProgram(),
  );
}
