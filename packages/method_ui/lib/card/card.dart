import 'package:method_style/element_scale.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

class MtCard extends StatelessWidget {
  final String text;
  const MtCard({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) => Card(
        elevation: 1,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius.all(
            SmoothRadius(
              cornerRadius: ElementScale.cornerLarge,
              cornerSmoothing: ElementScale.cornerSmoothFactor,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8.0,
          ),
          child: AspectRatio(
            aspectRatio: 1,
            child: Center(child: Text(text)),
          ),
        ),
      );
}
