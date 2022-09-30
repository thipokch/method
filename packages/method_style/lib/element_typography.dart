import 'package:method_style/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

import 'element_scale.dart';

class ElementTypography {
  ElementTypography._();

  static const weightRegular = 400; /* Regular weight */
  static const fontWeightRegular = FontWeight.w400;
  static const weightMedium = 500; /* Medium weight */
  static const fontWeightMedium = FontWeight.w500;
  static const weightBold = 700; /* Bold weight */
  static const fontWeightBold = FontWeight.w700;
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
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    displayMedium: TextStyle(
      fontFamily: ElementTypography.displayMediumFamily,
      fontSize: ElementScale.typescaleDisplayMedium,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    displaySmall: TextStyle(
      fontFamily: ElementTypography.displaySmallFamily,
      fontSize: ElementScale.typescaleDisplaySmall,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    headlineLarge: TextStyle(
      fontFamily: ElementTypography.headlineLargeFamily,
      fontSize: ElementScale.typescaleHeadlineLarge,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    headlineMedium: TextStyle(
      fontFamily: ElementTypography.headlineMediumFamily,
      fontSize: ElementScale.typescaleHeadlineMedium,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    headlineSmall: TextStyle(
      fontFamily: ElementTypography.headlineSmallFamily,
      fontSize: ElementScale.typescaleHeadlineSmall,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    titleLarge: TextStyle(
      fontFamily: ElementTypography.titleLargeFamily,
      fontSize: ElementScale.typescaleTitleLarge,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    titleMedium: TextStyle(
      fontFamily: ElementTypography.titleMediumFamily,
      fontSize: ElementScale.typescaleTitleMedium,
      fontWeight: fontWeightMedium,
      package: 'method_style',
    ),
    titleSmall: TextStyle(
      fontFamily: ElementTypography.titleSmallFamily,
      fontSize: ElementScale.typescaleTitleSmall,
      fontWeight: fontWeightMedium,
      package: 'method_style',
    ),
    bodyLarge: TextStyle(
      fontFamily: ElementTypography.bodyLargeFamily,
      fontSize: ElementScale.typescaleBodyLarge,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    bodyMedium: TextStyle(
      fontFamily: ElementTypography.bodyMediumFamily,
      fontSize: ElementScale.typescaleBodyMedium,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    bodySmall: TextStyle(
      fontFamily: ElementTypography.bodySmallFamily,
      fontSize: ElementScale.typescaleBodySmall,
      fontWeight: fontWeightRegular,
      package: 'method_style',
    ),
    labelLarge: TextStyle(
      fontFamily: ElementTypography.labelLargeFamily,
      fontSize: ElementScale.typescaleLabelLarge,
      fontWeight: fontWeightMedium,
      package: 'method_style',
    ),
    labelMedium: TextStyle(
      fontFamily: ElementTypography.labelMediumFamily,
      fontSize: ElementScale.typescaleLabelMedium,
      fontWeight: fontWeightMedium,
      package: 'method_style',
    ),
    labelSmall: TextStyle(
      fontFamily: ElementTypography.labelSmallFamily,
      fontSize: ElementScale.typescaleLabelSmall,
      fontWeight: fontWeightMedium,
      package: 'method_style',
    ),
  );
}
