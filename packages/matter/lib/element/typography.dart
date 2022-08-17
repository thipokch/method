import 'package:element/element_typography.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';

TextTheme textStyle = TextTheme(
    displayLarge: TextStyle(
      fontFamily: ElementTypography.displayLargeFamily,
      fontSize: ElementScale.typescaleDisplayLarge,
      fontWeight:
          FontWeight.values[ElementTypography.displayLargeWeight ~/ 100 - 1],
      package: 'element',
    ),
    displayMedium: TextStyle(
      fontFamily: ElementTypography.displayMediumFamily,
      fontSize: ElementScale.typescaleDisplayMedium,
      fontWeight:
          FontWeight.values[ElementTypography.displayMediumWeight ~/ 100 - 1],
      package: 'element',
    ),
    displaySmall: TextStyle(
      fontFamily: ElementTypography.displaySmallFamily,
      fontSize: ElementScale.typescaleDisplaySmall,
      fontWeight:
          FontWeight.values[ElementTypography.displaySmallWeight ~/ 100 - 1],
      package: 'element',
    ),
    headlineLarge: TextStyle(
      fontFamily: ElementTypography.headlineLargeFamily,
      fontSize: ElementScale.typescaleHeadlineLarge,
      fontWeight:
          FontWeight.values[ElementTypography.headlineLargeWeight ~/ 100 - 1],
      package: 'element',
    ),
    headlineMedium: TextStyle(
      fontFamily: ElementTypography.headlineMediumFamily,
      fontSize: ElementScale.typescaleHeadlineMedium,
      fontWeight:
          FontWeight.values[ElementTypography.headlineMediumWeight ~/ 100 - 1],
      package: 'element',
    ),
    headlineSmall: TextStyle(
      fontFamily: ElementTypography.headlineSmallFamily,
      fontSize: ElementScale.typescaleHeadlineSmall,
      fontWeight:
          FontWeight.values[ElementTypography.headlineSmallWeight ~/ 100 - 1],
      package: 'element',
    ),
    titleLarge: TextStyle(
      fontFamily: ElementTypography.titleLargeFamily,
      fontSize: ElementScale.typescaleTitleLarge,
      fontWeight:
          FontWeight.values[ElementTypography.titleLargeWeight ~/ 100 - 1],
      package: 'element',
    ),
    titleMedium: TextStyle(
      fontFamily: ElementTypography.titleMediumFamily,
      fontSize: ElementScale.typescaleTitleMedium,
      fontWeight:
          FontWeight.values[ElementTypography.titleMediumWeight ~/ 100 - 1],
      package: 'element',
    ),
    titleSmall: TextStyle(
      fontFamily: ElementTypography.titleSmallFamily,
      fontSize: ElementScale.typescaleTitleSmall,
      fontWeight:
          FontWeight.values[ElementTypography.titleSmallWeight ~/ 100 - 1],
      package: 'element',
    ),
    bodyLarge: TextStyle(
      fontFamily: ElementTypography.bodyLargeFamily,
      fontSize: ElementScale.typescaleBodyLarge,
      fontWeight:
          FontWeight.values[ElementTypography.bodyLargeWeight ~/ 100 - 1],
      package: 'element',
    ),
    bodyMedium: TextStyle(
      fontFamily: ElementTypography.bodyMediumFamily,
      fontSize: ElementScale.typescaleBodyMedium,
      fontWeight:
          FontWeight.values[ElementTypography.bodyMediumWeight ~/ 100 - 1],
      package: 'element',
    ),
    bodySmall: TextStyle(
      fontFamily: ElementTypography.bodySmallFamily,
      fontSize: ElementScale.typescaleBodySmall,
      fontWeight:
          FontWeight.values[ElementTypography.bodySmallWeight ~/ 100 - 1],
      package: 'element',
    ),
    labelLarge: TextStyle(
      fontFamily: ElementTypography.labelLargeFamily,
      fontSize: ElementScale.typescaleLabelLarge,
      fontWeight:
          FontWeight.values[ElementTypography.labelLargeWeight ~/ 100 - 1],
      package: 'element',
    ),
    labelMedium: TextStyle(
      fontFamily: ElementTypography.labelMediumFamily,
      fontSize: ElementScale.typescaleLabelMedium,
      fontWeight:
          FontWeight.values[ElementTypography.labelMediumWeight ~/ 100 - 1],
      package: 'element',
    ),
    labelSmall: TextStyle(
      fontFamily: ElementTypography.labelSmallFamily,
      fontSize: ElementScale.typescaleLabelSmall,
      fontWeight:
          FontWeight.values[ElementTypography.labelSmallWeight ~/ 100 - 1],
      package: 'element',
    ));
