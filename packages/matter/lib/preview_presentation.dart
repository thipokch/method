import 'package:flutter/material.dart';
import 'package:matter/element/iconography_preview.dart';
import 'package:matter/element/typography_preview.dart';

import 'preview_helper.dart';

// If screen content width is greater or equal to this value, the light and dark
// color schemes will be displayed in a column. Otherwise, they will
// be displayed in a row.
const double narrowScreenWidthThreshold = 400;

class PresentationPreview extends StatelessWidget {
  const PresentationPreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Widget Function(String) _sectionLabel = Preview.sectionLabel;

    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth < narrowScreenWidthThreshold) {
          return SingleChildScrollView(
            child: Column(
              children: [
                _sectionLabel("Iconography"),
                const IconographyPreview(),
                _sectionLabel("Typography"),
                const TypographyPreview(),
              ],
            ),
          );
        } else {
          return SingleChildScrollView(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      _sectionLabel("Iconography"),
                      const IconographyPreview(),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      _sectionLabel("Typography"),
                      const TypographyPreview(),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }
}
