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
    required Color colorLighter,
    required Color colorLight,
    required Color colorDark,
    required Color colorDarker,
  }) = _Presentation;
}
