import 'package:flutter/material.dart';

import 'element_color.dart';
import 'element_typography.dart';
import 'patch/ink_sparkle.dart';

class ElementTheme {
  ElementTheme._();

  static ThemeData light = ThemeData(
    useMaterial3: true,
    textTheme: ElementTypography.textStyle,
    splashFactory: InkSparklePatch.splashFactory,
    colorScheme: ElementColor.lightColorStyle,
    extensions: const [ElementColor.lightCustomColors],
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    textTheme: ElementTypography.textStyle,
    splashFactory: InkSparklePatch.splashFactory,
    colorScheme: ElementColor.darkColorStyle,
    extensions: const [ElementColor.darkCustomColors],
  );
}
