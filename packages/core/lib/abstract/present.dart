// ignore_for_file: depend_on_referenced_packages

import 'package:core/util/color.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';
import 'package:material_color_utilities/palettes/tonal_palette.dart';
import 'package:material_color_utilities/hct/cam16.dart';

part 'present.freezed.dart';
part 'present.g.dart';

abstract class Present {
  Presentation get presentation;
}

@freezed
class Presentation with _$Presentation {
  const Presentation._();

  const factory Presentation({
    required double seed,
    @ColorConverter() required Color primary,
    @ColorConverter() required Color secondary,
    @ColorConverter() required Color tertiary,
    @ColorConverter() required Color neutral,
    @ColorConverter() required Color neutralVariant,
  }) = _Presentation;

  factory Presentation.fromJson(Map<String, dynamic> json) =>
      _$PresentationFromJson(json);

  CorePalette pallete() => CorePalette.fromList(<int>[
        ...toTonal(primary, 75).asList,
        ...toTonal(secondary, 65).asList,
        ...toTonal(tertiary, 55).asList,
        ...toTonal(neutral, 4).asList,
        ...toTonal(neutralVariant, 8).asList,
      ]);

  // TonalPalette tonal() => TonalPalette.fromList(<int>[
  //       primary.value,
  //       secondary.value,
  //       tertiary.value,
  //       neutral.value,
  //       neutralVariant.value,
  //     ]);

  // Scheme lightScheme() => Scheme.lightFromCorePalette(pallete());

  // Scheme darkScheme() => Scheme.darkFromCorePalette(pallete());

  // Scheme scheme(Brightness brightness) =>
  //     brightness == Brightness.light ? lightScheme() : darkScheme();

  ColorScheme darkScheme() {
    final p = pallete();

    return ColorScheme(
      primary: Color(p.primary.get(80)),
      onPrimary: Color(p.primary.get(20)),
      primaryContainer: Color(p.primary.get(30)),
      onPrimaryContainer: Color(p.primary.get(90)),
      secondary: Color(p.secondary.get(80)),
      onSecondary: Color(p.secondary.get(20)),
      secondaryContainer: Color(p.secondary.get(30)),
      onSecondaryContainer: Color(p.secondary.get(90)),
      tertiary: Color(p.tertiary.get(80)),
      onTertiary: Color(p.tertiary.get(20)),
      tertiaryContainer: Color(p.tertiary.get(30)),
      onTertiaryContainer: Color(p.tertiary.get(90)),
      error: Color(p.error.get(80)),
      onError: Color(p.error.get(20)),
      errorContainer: Color(p.error.get(30)),
      onErrorContainer: Color(p.error.get(80)),
      background: Color(p.neutral.get(10)),
      onBackground: Color(p.neutral.get(90)),
      surface: Color(p.neutral.get(10)),
      onSurface: Color(p.neutral.get(90)),
      surfaceVariant: Color(p.neutralVariant.get(30)),
      onSurfaceVariant: Color(p.neutralVariant.get(80)),
      outline: Color(p.neutralVariant.get(60)),
      shadow: Color(p.neutral.get(0)),
      inverseSurface: Color(p.neutral.get(90)),
      onInverseSurface: Color(p.neutral.get(20)),
      inversePrimary: Color(p.primary.get(40)),
      brightness: Brightness.dark,
    );
  }

  ColorScheme lightScheme() {
    final p = pallete();

    return ColorScheme(
      primary: Color(p.primary.get(40)),
      onPrimary: Color(p.primary.get(100)),
      primaryContainer: Color(p.primary.get(90)),
      onPrimaryContainer: Color(p.primary.get(10)),
      secondary: Color(p.secondary.get(40)),
      onSecondary: Color(p.secondary.get(100)),
      secondaryContainer: Color(p.secondary.get(90)),
      onSecondaryContainer: Color(p.secondary.get(10)),
      tertiary: Color(p.tertiary.get(40)),
      onTertiary: Color(p.tertiary.get(90)),
      tertiaryContainer: Color(p.tertiary.get(90)),
      onTertiaryContainer: Color(p.tertiary.get(10)),
      error: Color(p.error.get(40)),
      onError: Color(p.error.get(100)),
      errorContainer: Color(p.error.get(90)),
      onErrorContainer: Color(p.error.get(10)),
      background: Color(p.neutral.get(99)),
      onBackground: Color(p.neutral.get(10)),
      surface: Color(p.neutral.get(99)),
      onSurface: Color(p.neutral.get(10)),
      surfaceVariant: Color(p.neutralVariant.get(90)),
      onSurfaceVariant: Color(p.neutralVariant.get(30)),
      outline: Color(p.neutralVariant.get(50)),
      shadow: Color(p.neutral.get(0)),
      inverseSurface: Color(p.neutral.get(20)),
      onInverseSurface: Color(p.neutral.get(95)),
      inversePrimary: Color(p.primary.get(80)),
      brightness: Brightness.light,
    );
  }

  ColorScheme colorScheme(Brightness brightness) =>
      brightness == Brightness.light ? lightScheme() : darkScheme();

  // Color graphicPrimary() => Color(toTonal(primary, 40).get(85));
  // Color graphicSecondary() => Color(toTonal(secondary, 40).get(85));
  // Color graphicTertiary() => Color(toTonal(tertiary, 40).get(85));
}

// TonalPalette Color.toTonal() =>

TonalPalette toTonal(Color color, double chroma) {
  final cam = Cam16.fromInt(color.value);

  return TonalPalette.of(cam.hue, chroma);
}
