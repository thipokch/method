import 'package:flutter/material.dart';
import 'package:method_style/method_style.dart';

class MtPreview {
  static const rowDivider = SizedBox(width: 10, height: 10);
  static const colDivider = SizedBox(width: 10, height: 10);

  static const double cardWidth = 115;
  static const double maxWidthConstraint = 400;

  static Widget sectionLabel(String text) {
    return _MtPreviewSectionLabel(label: text);
  }
}

class _MtPreviewSectionLabel extends StatelessWidget {
  final String label;

  const _MtPreviewSectionLabel({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HeadingSection(label: label);
  }
}

// If screen content width is greater or equal to this value, the light and dark
// color schemes will be displayed in a column. Otherwise, they will
// be displayed in a row.
const double narrowScreenWidthThreshold = 400;
