import 'package:method_ui/gen/fonts.gen.dart';
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
      package: 'method_ui',
    ),
    displayMedium: TextStyle(
      fontFamily: ElementTypography.displayMediumFamily,
      fontSize: ElementScale.typescaleDisplayMedium,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    displaySmall: TextStyle(
      fontFamily: ElementTypography.displaySmallFamily,
      fontSize: ElementScale.typescaleDisplaySmall,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    headlineLarge: TextStyle(
      fontFamily: ElementTypography.headlineLargeFamily,
      fontSize: ElementScale.typescaleHeadlineLarge,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    headlineMedium: TextStyle(
      fontFamily: ElementTypography.headlineMediumFamily,
      fontSize: ElementScale.typescaleHeadlineMedium,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    headlineSmall: TextStyle(
      fontFamily: ElementTypography.headlineSmallFamily,
      fontSize: ElementScale.typescaleHeadlineSmall,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    titleLarge: TextStyle(
      fontFamily: ElementTypography.titleLargeFamily,
      fontSize: ElementScale.typescaleTitleLarge,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    titleMedium: TextStyle(
      fontFamily: ElementTypography.titleMediumFamily,
      fontSize: ElementScale.typescaleTitleMedium,
      fontWeight: fontWeightMedium,
      package: 'method_ui',
    ),
    titleSmall: TextStyle(
      fontFamily: ElementTypography.titleSmallFamily,
      fontSize: ElementScale.typescaleTitleSmall,
      fontWeight: fontWeightMedium,
      package: 'method_ui',
    ),
    bodyLarge: TextStyle(
      fontFamily: ElementTypography.bodyLargeFamily,
      fontSize: ElementScale.typescaleBodyLarge,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    bodyMedium: TextStyle(
      fontFamily: ElementTypography.bodyMediumFamily,
      fontSize: ElementScale.typescaleBodyMedium,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    bodySmall: TextStyle(
      fontFamily: ElementTypography.bodySmallFamily,
      fontSize: ElementScale.typescaleBodySmall,
      fontWeight: fontWeightRegular,
      package: 'method_ui',
    ),
    labelLarge: TextStyle(
      fontFamily: ElementTypography.labelLargeFamily,
      fontSize: ElementScale.typescaleLabelLarge,
      fontWeight: fontWeightMedium,
      package: 'method_ui',
    ),
    labelMedium: TextStyle(
      fontFamily: ElementTypography.labelMediumFamily,
      fontSize: ElementScale.typescaleLabelMedium,
      fontWeight: fontWeightMedium,
      package: 'method_ui',
    ),
    labelSmall: TextStyle(
      fontFamily: ElementTypography.labelSmallFamily,
      fontSize: ElementScale.typescaleLabelSmall,
      fontWeight: fontWeightMedium,
      package: 'method_ui',
    ),
  );
}
