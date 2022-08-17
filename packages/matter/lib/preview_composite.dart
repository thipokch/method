import 'package:flutter/material.dart';
import 'package:matter/preview_element.dart';
import 'package:matter/preview_helper.dart';
import 'package:matter/text/preview.dart';

import 'card/preview.dart';

// If screen content width is greater or equal to this value, the light and dark
// color schemes will be displayed in a column. Otherwise, they will
// be displayed in a row.
const double narrowScreenWidthThreshold = 400;

class CompositePreview extends StatelessWidget {
  const CompositePreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Widget Function(String) _sectionLabel = Preview.sectionLabel;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12.0,
        ),
        child: ListView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          shrinkWrap: true,
          children: [
            _sectionLabel("Cards"),
            const CardPreview(),
            _sectionLabel("Text Box"),
            const TextPreview(),
            _sectionLabel("Dialogs"),
            const Dialogs(),
          ],
        ),
      ),
    );
  }
}
