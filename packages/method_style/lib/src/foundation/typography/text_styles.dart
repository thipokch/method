import 'package:flutter/widgets.dart';
import 'package:method_style/method_style.dart';

/// MethodStyle Text Style Definitions
class MtTextStyle {
  static const _brandTextStyle = TextStyle(
    package: 'method_style',
    fontFamily: FontFamily.notoSans,
    // color: MtColors.black,
    fontWeight: MtFontWeight.regular,
  );

  static const _baseTextStyle = TextStyle(
    package: 'method_style',
    fontFamily: FontFamily.notoSans,
    // color: MtColors.black,
    fontWeight: MtFontWeight.regular,
  );

  /// Display Large Text Style
  static TextStyle get displayLarge => _brandTextStyle.copyWith(
        fontSize: MtFontSizes.displayLarge,
        fontWeight: MtFontWeight.regular,
      );

  /// Display Medium Text Style
  static TextStyle get displayMedium => _brandTextStyle.copyWith(
        fontSize: MtFontSizes.displayMedium,
        fontWeight: MtFontWeight.regular,
      );

  /// Display Small Text Style
  static TextStyle get displaySmall => _brandTextStyle.copyWith(
        fontSize: MtFontSizes.displaySmall,
        fontWeight: MtFontWeight.regular,
      );

  /// Headline Large Text Style
  static TextStyle get headlineLarge => _brandTextStyle.copyWith(
        fontSize: MtFontSizes.headlineLarge,
        fontWeight: MtFontWeight.regular,
      );

  /// Headline Medium Text Style
  static TextStyle get headlineMedium => _brandTextStyle.copyWith(
        fontSize: MtFontSizes.headlineMedium,
        fontWeight: MtFontWeight.regular,
      );

  /// Headline Small Text Style
  static TextStyle get headlineSmall => _brandTextStyle.copyWith(
        fontSize: MtFontSizes.headlineSmall,
        fontWeight: MtFontWeight.regular,
      );

  /// Title Large Text Style
  static TextStyle get titleLarge => _brandTextStyle.copyWith(
        fontSize: MtFontSizes.titleLarge,
        fontWeight: MtFontWeight.regular,
      );

  /// Title Medium Text Style
  static TextStyle get titleMedium => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.titleMedium,
        fontWeight: MtFontWeight.medium,
      );

  /// Title Small Text Style
  static TextStyle get titleSmall => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.titleSmall,
        fontWeight: MtFontWeight.medium,
      );

  /// Body Large Text Style
  static TextStyle get bodyLarge => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.bodyLarge,
        fontWeight: MtFontWeight.regular,
      );

  /// Body Medium Text Style
  static TextStyle get bodyMedium => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.bodyMedium,
        fontWeight: MtFontWeight.regular,
      );

  /// Body Small Text Style
  static TextStyle get bodySmall => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.bodySmall,
        fontWeight: MtFontWeight.regular,
      );

  /// Label Large Text Style
  static TextStyle get labelLarge => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.labelLarge,
        fontWeight: MtFontWeight.medium,
      );

  /// Label Medium Text Style
  static TextStyle get labelMedium => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.labelMedium,
        fontWeight: MtFontWeight.medium,
      );

  /// Label Small Text Style
  static TextStyle get labelSmall => _baseTextStyle.copyWith(
        fontSize: MtFontSizes.labelSmall,
        fontWeight: MtFontWeight.medium,
      );
}
