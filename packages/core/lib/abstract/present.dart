import 'dart:ui';

import 'package:core/util/color.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'present.freezed.dart';
part 'present.g.dart';

abstract class Present {
  Presentation get presentation;
}

@freezed
class Presentation with _$Presentation {
  const factory Presentation({
    required double seed,
    @ColorConverter() required Color colorLighter,
    @ColorConverter() required Color colorLight,
    @ColorConverter() required Color colorDark,
    @ColorConverter() required Color colorDarker,
  }) = _Presentation;

  factory Presentation.fromJson(Map<String, dynamic> json) =>
      _$PresentationFromJson(json);
}
