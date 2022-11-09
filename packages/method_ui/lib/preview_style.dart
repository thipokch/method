import 'package:flutter/material.dart';
import 'package:method_ui/element/color_preview.dart';
import 'package:method_ui/element/surface_preview.dart';

import 'preview_helper.dart';

// If screen content width is greater or equal to this value, the light and dark
// color schemes will be displayed in a column. Otherwise, they will
// be displayed in a row.
const double narrowScreenWidthThreshold = 400;

class StylePreview extends StatelessWidget {
  const StylePreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    Widget Function(String) _sectionLabel = Preview.sectionLabel;

    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return constraints.maxWidth < narrowScreenWidthThreshold
            ? SingleChildScrollView(
                child: Column(
                  children: [
                    _sectionLabel("Surfaces"),
                    const SurfacePreview(),
                    _sectionLabel("Color"),
                    const ColorPreview(),
                  ],
                ),
              )
            : SingleChildScrollView(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _sectionLabel("Color"),
                          const ColorPreview(),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          _sectionLabel("Surfaces"),
                          const SurfacePreview(),
                        ],
                      ),
                    ),
                  ],
                ),
              );
      }),
    );
  }
}
