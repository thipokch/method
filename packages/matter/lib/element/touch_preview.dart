import 'package:element/element_touch.dart';
import 'package:flutter/material.dart';

import '../button/button_filled.dart';
import '../preview_helper.dart';

class TouchPreview extends StatelessWidget {
  const TouchPreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const Widget _divider = Preview.colDivider;

    return Column(
      children: const [
        ButtonFilled(
          onPressed: ElementTouch.select,
          child: Text('Select'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.error,
          child: Text('Error'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.success,
          child: Text('Success'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.warn,
          child: Text('Warn'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.heavy,
          child: Text('Heavy'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.medium,
          child: Text('Medium'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.light,
          child: Text('Light'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.rigid,
          child: Text('Rigid'),
        ),
        _divider,
        ButtonFilled(
          onPressed: ElementTouch.soft,
          child: Text('Soft'),
        ),
        _divider,
      ],
    );
  }
}
