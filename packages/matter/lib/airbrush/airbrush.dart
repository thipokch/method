import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:matter/airbrush/airbrush_effect_sprv.dart';

import 'airbrush_canvas_sprv.dart';

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
  final FragmentProgram canvasFp;
  final FragmentProgram effectFp;

  AirbrushFP(this.canvasFp, this.effectFp);
}

/// Loads JPEG image and the [FragmentProgram]
Future<AirbrushFP> _loadFp() async {
  return AirbrushFP(
    await airbrushCanvasFragmentProgram(),
    await airbrushEffectFragmentProgram(),
  );
}
