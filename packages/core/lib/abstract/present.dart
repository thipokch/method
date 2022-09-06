import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'present.freezed.dart';

abstract class Present {
  Presentation get presentation;
}

@freezed
class Presentation with _$Presentation {
  const factory Presentation({
    required double seed,
    required Color colorA,
    required Color colorB,
    required Color colorC,
    required Color colorD,
  }) = _Presentation;
}
