import 'package:flutter/material.dart';
import 'package:dynamic_color/dynamic_color.dart';

class ElementColor {
  ElementColor._();

  // static const gold = Color(0xFFE2C197);
  // static const  vanilla = Color(0xFFC1CBA2);
  // static const  mauve = Color(0xFFE9BAC7);

  static const ColorScheme lightColorStyle = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF5455A9),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFE1DFFF),
    onPrimaryContainer: Color(0xFF0B0664),
    secondary: Color(0xFF5D5C72),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFE2E0F9),
    onSecondaryContainer: Color(0xFF1A1A2C),
    tertiary: Color(0xFF795369),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFFFD8EC),
    onTertiaryContainer: Color(0xFF2E1125),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFFFBFF),
    onBackground: Color(0xFF1C1B1F),
    surface: Color(0xFFFFFBFF),
    onSurface: Color(0xFF1C1B1F),
    surfaceVariant: Color(0xFFE4E1EC),
    onSurfaceVariant: Color(0xFF47464F),
    outline: Color(0xFF777680),
    onInverseSurface: Color(0xFFF3EFF4),
    inverseSurface: Color(0xFF313034),
    inversePrimary: Color(0xFFC1C1FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF5455A9),
  );

  static const ColorScheme darkColorStyle = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFC1C1FF),
    onPrimary: Color(0xFF242478),
    primaryContainer: Color(0xFF3B3D8F),
    onPrimaryContainer: Color(0xFFE1DFFF),
    secondary: Color(0xFFC6C4DD),
    onSecondary: Color(0xFF2F2F42),
    secondaryContainer: Color(0xFF454559),
    onSecondaryContainer: Color(0xFFE2E0F9),
    tertiary: Color(0xFFE9B9D3),
    onTertiary: Color(0xFF46263A),
    tertiaryContainer: Color(0xFF5F3C51),
    onTertiaryContainer: Color(0xFFFFD8EC),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1C1B1F),
    onBackground: Color(0xFFE5E1E6),
    surface: Color(0xFF1C1B1F),
    onSurface: Color(0xFFE5E1E6),
    surfaceVariant: Color(0xFF47464F),
    onSurfaceVariant: Color(0xFFC8C5D0),
    outline: Color(0xFF918F9A),
    onInverseSurface: Color(0xFF1C1B1F),
    inverseSurface: Color(0xFFE5E1E6),
    inversePrimary: Color(0xFF5455A9),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFC1C1FF),
  );

  static const CustomColors lightCustomColors = CustomColors(
    sourceGold: Color(0xFFE2C197),
    gold: Color(0xFF825500),
    onGold: Color(0xFFFFFFFF),
    goldContainer: Color(0xFFFFDDB3),
    onGoldContainer: Color(0xFF291800),
    sourceVanilla: Color(0xFFC1CBA2),
    vanilla: Color(0xFF4F6703),
    onVanilla: Color(0xFFFFFFFF),
    vanillaContainer: Color(0xFFD0EE82),
    onVanillaContainer: Color(0xFF151F00),
    sourceMauve: Color(0xFFE9BAC7),
    mauve: Color(0xFF984062),
    onMauve: Color(0xFFFFFFFF),
    mauveContainer: Color(0xFFFFD9E3),
    onMauveContainer: Color(0xFF3E001E),
  );

  static const CustomColors darkCustomColors = CustomColors(
    sourceGold: Color(0xFFE2C197),
    gold: Color(0xFFFFB950),
    onGold: Color(0xFF452B00),
    goldContainer: Color(0xFF624000),
    onGoldContainer: Color(0xFFFFDDB3),
    sourceVanilla: Color(0xFFC1CBA2),
    vanilla: Color(0xFFB4D269),
    onVanilla: Color(0xFF273500),
    vanillaContainer: Color(0xFF3A4D00),
    onVanillaContainer: Color(0xFFD0EE82),
    sourceMauve: Color(0xFFE9BAC7),
    mauve: Color(0xFFFFB0C9),
    onMauve: Color(0xFF5E1133),
    mauveContainer: Color(0xFF7B294A),
    onMauveContainer: Color(0xFFFFD9E3),
  );
}

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceGold,
    required this.gold,
    required this.onGold,
    required this.goldContainer,
    required this.onGoldContainer,
    required this.sourceVanilla,
    required this.vanilla,
    required this.onVanilla,
    required this.vanillaContainer,
    required this.onVanillaContainer,
    required this.sourceMauve,
    required this.mauve,
    required this.onMauve,
    required this.mauveContainer,
    required this.onMauveContainer,
  });

  final Color? sourceGold;
  final Color? gold;
  final Color? onGold;
  final Color? goldContainer;
  final Color? onGoldContainer;
  final Color? sourceVanilla;
  final Color? vanilla;
  final Color? onVanilla;
  final Color? vanillaContainer;
  final Color? onVanillaContainer;
  final Color? sourceMauve;
  final Color? mauve;
  final Color? onMauve;
  final Color? mauveContainer;
  final Color? onMauveContainer;

  @override
  CustomColors copyWith({
    Color? sourceGold,
    Color? gold,
    Color? onGold,
    Color? goldContainer,
    Color? onGoldContainer,
    Color? sourceVanilla,
    Color? vanilla,
    Color? onVanilla,
    Color? vanillaContainer,
    Color? onVanillaContainer,
    Color? sourceMauve,
    Color? mauve,
    Color? onMauve,
    Color? mauveContainer,
    Color? onMauveContainer,
  }) {
    return CustomColors(
      sourceGold: sourceGold ?? this.sourceGold,
      gold: gold ?? this.gold,
      onGold: onGold ?? this.onGold,
      goldContainer: goldContainer ?? this.goldContainer,
      onGoldContainer: onGoldContainer ?? this.onGoldContainer,
      sourceVanilla: sourceVanilla ?? this.sourceVanilla,
      vanilla: vanilla ?? this.vanilla,
      onVanilla: onVanilla ?? this.onVanilla,
      vanillaContainer: vanillaContainer ?? this.vanillaContainer,
      onVanillaContainer: onVanillaContainer ?? this.onVanillaContainer,
      sourceMauve: sourceMauve ?? this.sourceMauve,
      mauve: mauve ?? this.mauve,
      onMauve: onMauve ?? this.onMauve,
      mauveContainer: mauveContainer ?? this.mauveContainer,
      onMauveContainer: onMauveContainer ?? this.onMauveContainer,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }

    return CustomColors(
      sourceGold: Color.lerp(sourceGold, other.sourceGold, t),
      gold: Color.lerp(gold, other.gold, t),
      onGold: Color.lerp(onGold, other.onGold, t),
      goldContainer: Color.lerp(goldContainer, other.goldContainer, t),
      onGoldContainer: Color.lerp(onGoldContainer, other.onGoldContainer, t),
      sourceVanilla: Color.lerp(sourceVanilla, other.sourceVanilla, t),
      vanilla: Color.lerp(vanilla, other.vanilla, t),
      onVanilla: Color.lerp(onVanilla, other.onVanilla, t),
      vanillaContainer: Color.lerp(vanillaContainer, other.vanillaContainer, t),
      onVanillaContainer:
          Color.lerp(onVanillaContainer, other.onVanillaContainer, t),
      sourceMauve: Color.lerp(sourceMauve, other.sourceMauve, t),
      mauve: Color.lerp(mauve, other.mauve, t),
      onMauve: Color.lerp(onMauve, other.onMauve, t),
      mauveContainer: Color.lerp(mauveContainer, other.mauveContainer, t),
      onMauveContainer: Color.lerp(onMauveContainer, other.onMauveContainer, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceGold]
  ///   * [CustomColors.gold]
  ///   * [CustomColors.onGold]
  ///   * [CustomColors.goldContainer]
  ///   * [CustomColors.onGoldContainer]
  ///   * [CustomColors.sourceVanilla]
  ///   * [CustomColors.vanilla]
  ///   * [CustomColors.onVanilla]
  ///   * [CustomColors.vanillaContainer]
  ///   * [CustomColors.onVanillaContainer]
  ///   * [CustomColors.sourceMauve]
  ///   * [CustomColors.mauve]
  ///   * [CustomColors.onMauve]
  ///   * [CustomColors.mauveContainer]
  ///   * [CustomColors.onMauveContainer]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceGold: sourceGold!.harmonizeWith(dynamic.primary),
      gold: gold!.harmonizeWith(dynamic.primary),
      onGold: onGold!.harmonizeWith(dynamic.primary),
      goldContainer: goldContainer!.harmonizeWith(dynamic.primary),
      onGoldContainer: onGoldContainer!.harmonizeWith(dynamic.primary),
      sourceVanilla: sourceVanilla!.harmonizeWith(dynamic.primary),
      vanilla: vanilla!.harmonizeWith(dynamic.primary),
      onVanilla: onVanilla!.harmonizeWith(dynamic.primary),
      vanillaContainer: vanillaContainer!.harmonizeWith(dynamic.primary),
      onVanillaContainer: onVanillaContainer!.harmonizeWith(dynamic.primary),
      sourceMauve: sourceMauve!.harmonizeWith(dynamic.primary),
      mauve: mauve!.harmonizeWith(dynamic.primary),
      onMauve: onMauve!.harmonizeWith(dynamic.primary),
      mauveContainer: mauveContainer!.harmonizeWith(dynamic.primary),
      onMauveContainer: onMauveContainer!.harmonizeWith(dynamic.primary),
    );
  }
}
