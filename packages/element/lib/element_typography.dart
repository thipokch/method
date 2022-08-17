import 'package:element/gen/fonts.gen.dart';

class ElementTypography {
  ElementTypography._();

  static const weightRegular = 400; /* Regular weight */
  static const weightMedium = 500; /* Medium weight */
  static const weightBold = 700; /* Bold weight */
  static const brand = FontFamily.notoSerif; /* Brand typeface */
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
}
