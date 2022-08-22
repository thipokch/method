import 'package:flutter/material.dart';

import 'element_color.dart';
import 'element_typography.dart';
import 'patch/ink_sparkle.dart';

class ElementTheme {
  ElementTheme._();

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    textTheme: ElementTypography.textStyle,
    splashFactory: InkSparklePatch.splashFactory,
    colorScheme: ElementColor.darkColorStyle,
  );

  static ThemeData light = ThemeData(
    useMaterial3: true,
    textTheme: ElementTypography.textStyle,
    splashFactory: InkSparklePatch.splashFactory,
    colorScheme: ElementColor.lightColorStyle,
  );
}
