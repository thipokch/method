import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';
import 'package:method_style/src/preview/preview.dart';

class HapticsPreview extends StatelessWidget {
  const HapticsPreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const Widget _divider = MtPreview.colDivider;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            ButtonTonal(
              onPressed: MtHaptics.warn,
              child: Text('Warn'),
            ),
            _divider,
            ButtonTonal(
              onPressed: MtHaptics.error,
              child: Text('Error'),
            ),
            _divider,
            ButtonTonal(
              onPressed: MtHaptics.success,
              child: Text('Success'),
            ),
          ],
        ),
        Column(
          children: const [
            ButtonTonal(
              onPressed: MtHaptics.light,
              child: Text('Light'),
            ),
            _divider,
            ButtonTonal(
              onPressed: MtHaptics.heavy,
              child: Text('Heavy'),
            ),
            _divider,
            ButtonTonal(
              onPressed: MtHaptics.medium,
              child: Text('Medium'),
            ),
          ],
        ),
        Column(
          children: const [
            ButtonTonal(
              onPressed: MtHaptics.select,
              child: Text('Select'),
            ),
            _divider,
            ButtonTonal(
              onPressed: MtHaptics.rigid,
              child: Text('Rigid'),
            ),
            _divider,
            ButtonTonal(
              onPressed: MtHaptics.soft,
              child: Text('Soft'),
            ),
          ],
        ),
      ],
    );
  }
}
