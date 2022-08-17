import 'package:element/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

import 'element_scale.dart';

class ElementTypography {
  ElementTypography._();

  static const weightRegular = 400; /* Regular weight */
  static const weightMedium = 500; /* Medium weight */
  static const weightBold = 700; /* Bold weight */
  static const brand = FontFamily.notoSans; /* Brand typeface */
  static const plain = FontFamily.notoSans; /* Plain typeface */

  static const displayLargeWeight = weightRegular;
  static const displayLargeFamily = brand;
  static const displayMediumWeight = weightRegular;
  static const displayMediumFamily = brand;
  static const displaySmallWeight = weightRegular;
  static const displaySmallFamily = brand;

  static const headlineLargeWeight = weightRegular;
  static const headlineLargeFamily = brand;
  static const headlineMediumWeight = weightRegular;
  static const headlineMediumFamily = brand;
  static const headlineSmallWeight = weightRegular;
  static const headlineSmallFamily = brand;

  static const titleLargeWeight = weightRegular;
  static const titleLargeFamily = brand;
  static const titleMediumWeight = weightMedium;
  static const titleMediumFamily = plain;
  static const titleSmallWeight = weightMedium;
  static const titleSmallFamily = plain;

  static const bodyLargeWeight = weightRegular;
  static const bodyLargeFamily = plain;
  static const bodyMediumWeight = weightRegular;
  static const bodyMediumFamily = plain;
  static const bodySmallWeight = weightRegular;
  static const bodySmallFamily = plain;

  static const labelLargeWeight = weightMedium;
  static const labelLargeFamily = plain;
  static const labelMediumWeight = weightMedium;
  static const labelMediumFamily = plain;
  static const labelSmallWeight = weightMedium;
  static const labelSmallFamily = plain;

  static const TextTheme textStyle = TextTheme(
    displayLarge: TextStyle(
      fontFamily: ElementTypography.displayLargeFamily,
      fontSize: ElementScale.typescaleDisplayLarge,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    displayMedium: TextStyle(
      fontFamily: ElementTypography.displayMediumFamily,
      fontSize: ElementScale.typescaleDisplayMedium,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    displaySmall: TextStyle(
      fontFamily: ElementTypography.displaySmallFamily,
      fontSize: ElementScale.typescaleDisplaySmall,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    headlineLarge: TextStyle(
      fontFamily: ElementTypography.headlineLargeFamily,
      fontSize: ElementScale.typescaleHeadlineLarge,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    headlineMedium: TextStyle(
      fontFamily: ElementTypography.headlineMediumFamily,
      fontSize: ElementScale.typescaleHeadlineMedium,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    headlineSmall: TextStyle(
      fontFamily: ElementTypography.headlineSmallFamily,
      fontSize: ElementScale.typescaleHeadlineSmall,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    titleLarge: TextStyle(
      fontFamily: ElementTypography.titleLargeFamily,
      fontSize: ElementScale.typescaleTitleLarge,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    titleMedium: TextStyle(
      fontFamily: ElementTypography.titleMediumFamily,
      fontSize: ElementScale.typescaleTitleMedium,
      fontWeight: FontWeight.w500,
      package: 'element',
    ),
    titleSmall: TextStyle(
      fontFamily: ElementTypography.titleSmallFamily,
      fontSize: ElementScale.typescaleTitleSmall,
      fontWeight: FontWeight.w500,
      package: 'element',
    ),
    bodyLarge: TextStyle(
      fontFamily: ElementTypography.bodyLargeFamily,
      fontSize: ElementScale.typescaleBodyLarge,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    bodyMedium: TextStyle(
      fontFamily: ElementTypography.bodyMediumFamily,
      fontSize: ElementScale.typescaleBodyMedium,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    bodySmall: TextStyle(
      fontFamily: ElementTypography.bodySmallFamily,
      fontSize: ElementScale.typescaleBodySmall,
      fontWeight: FontWeight.w400,
      package: 'element',
    ),
    labelLarge: TextStyle(
      fontFamily: ElementTypography.labelLargeFamily,
      fontSize: ElementScale.typescaleLabelLarge,
      fontWeight: FontWeight.w500,
      package: 'element',
    ),
    labelMedium: TextStyle(
      fontFamily: ElementTypography.labelMediumFamily,
      fontSize: ElementScale.typescaleLabelMedium,
      fontWeight: FontWeight.w500,
      package: 'element',
    ),
    labelSmall: TextStyle(
      fontFamily: ElementTypography.labelSmallFamily,
      fontSize: ElementScale.typescaleLabelSmall,
      fontWeight: FontWeight.w500,
      package: 'element',
    ),
  );
}
