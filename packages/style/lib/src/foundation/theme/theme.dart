import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';
import 'package:figma_squircle/figma_squircle.dart';

abstract class MtTheme {
  static get defaultTheme => ThemeData(
        useMaterial3: true,
        splashFactory: kIsWeb ? null : InkSparklePatch.splashFactory,
        textTheme: MtTextTheme.mediumText,
        extensions: const [MtColorTheme.lightCustomColors],
      );

  static get light =>
      defaultTheme.copyWith(colorScheme: MtColorTheme.lightColorStyle);

  static get dark =>
      defaultTheme.copyWith(colorScheme: MtColorTheme.darkColorStyle);

  // static adaptive(MediaQueryData media) => defaultTheme.copyWith(
  //       textTheme: media.textScaleFactor == 1.0
  //           ? MtTextTheme.mediumText
  //           : (media.textScaleFactor > 1.0
  //               ? MtTextTheme.largeText
  //               : MtTextTheme.smallText),
  //     );

  // static adaptiveLight(MediaQueryData media) =>
  //     adaptive(media).copyWith(colorScheme: MtColorTheme.lightColorStyle);

  // static adaptiveDark(MediaQueryData media) =>
  //     adaptive(media).copyWith(colorScheme: MtColorTheme.darkColorStyle);

  static SmoothRadius screenCornerRadius(BuildContext context) => SmoothRadius(
        cornerRadius: MediaQuery.of(context).padding.top / 2,
        cornerSmoothing: MtCorner.smoothFactor,
      );

  // From MediaQueryData

  // static double textScaleFactor(BuildContext context) =>
  //     MediaQuery.of(context).textScaleFactor;
  // static bool boldText(BuildContext context) => MediaQuery.of(context).boldText;

  // static Size size(BuildContext context) => MediaQuery.of(context).size;
  // static double devicePixelRatio(BuildContext context) =>
  //     MediaQuery.of(context).devicePixelRatio;
  // static EdgeInsets padding(BuildContext context) =>
  //     MediaQuery.of(context).padding;
  // static EdgeInsets viewInsets(BuildContext context) =>
  //     MediaQuery.of(context).viewInsets;
  // static EdgeInsets viewPadding(BuildContext context) =>
  //     MediaQuery.of(context).viewPadding;

  // static Brightness brightness(BuildContext context) =>
  //     MediaQuery.of(context).platformBrightness;
  // static bool invertColors(BuildContext context) =>
  //     MediaQuery.of(context).invertColors;
  // static bool highContrast(BuildContext context) =>
  //     MediaQuery.of(context).highContrast;

  // static bool disableAnimations(BuildContext context) =>
  //     MediaQuery.of(context).disableAnimations;

  // // https://kylebashour.com/posts/finding-the-real-iphone-x-corner-radius
  // // https://figma-squircle.vercel.app
  // // https://www.figma.com/blog/desperately-seeking-squircles/

  // static SmoothRadius screenCornerRadius(BuildContext context) => SmoothRadius(
  //       cornerRadius: padding(context).top / 2,
  //       cornerSmoothing: MtCorner.SmoothFactor,
  //     );
}
