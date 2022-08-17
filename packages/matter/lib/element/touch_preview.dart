import 'package:element/element_touch.dart';
import 'package:flutter/material.dart';

import '../button/button_tonal.dart';
import '../preview_helper.dart';

class TouchPreview extends StatelessWidget {
  const TouchPreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const Widget _divider = Preview.colDivider;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: const [
            ButtonTonal(
              onPressed: ElementTouch.warn,
              child: Text('Warn'),
            ),
            _divider,
            ButtonTonal(
              onPressed: ElementTouch.error,
              child: Text('Error'),
            ),
            _divider,
            ButtonTonal(
              onPressed: ElementTouch.success,
              child: Text('Success'),
            ),
          ],
        ),
        Column(
          children: const [
            ButtonTonal(
              onPressed: ElementTouch.light,
              child: Text('Light'),
            ),
            _divider,
            ButtonTonal(
              onPressed: ElementTouch.heavy,
              child: Text('Heavy'),
            ),
            _divider,
            ButtonTonal(
              onPressed: ElementTouch.medium,
              child: Text('Medium'),
            ),
          ],
        ),
        Column(
          children: const [
            ButtonTonal(
              onPressed: ElementTouch.select,
              child: Text('Select'),
            ),
            _divider,
            ButtonTonal(
              onPressed: ElementTouch.rigid,
              child: Text('Rigid'),
            ),
            _divider,
            ButtonTonal(
              onPressed: ElementTouch.soft,
              child: Text('Soft'),
            ),
          ],
        ),
      ],
    );
  }
}
