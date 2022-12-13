import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';

class TextBox extends StatelessWidget {
  const TextBox({
    super.key,
    this.hintText,
  });

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: SmoothRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          width: MtStroke.L,
        ),
        borderRadius: const SmoothBorderRadius.all(
          SmoothRadius(
            cornerRadius: MtCorner.Large,
            cornerSmoothing: MtCorner.smoothFactor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16.0,
          right: 16.0,
          top: 8.0,
          bottom: 8.0,
        ),
        child: TextField(
          controller: TextEditingController(),
          style: textTheme.bodyLarge,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: hintText ?? 'Start Writing...',
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
