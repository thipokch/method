import 'package:method_style/method_style.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';

export 'card_tile.dart';
export 'card_text_edit.dart';
export 'card_editing.dart';

class MtCard extends StatelessWidget {
  final Widget? header;
  final Widget body;
  final Widget? footer;
  final GestureTapCallback? onTap;
  final bool isExpandable;
  final bool isSelected;

  const MtCard({
    super.key,
    this.header,
    required this.body,
    this.footer,
    this.isSelected = false,
    this.isExpandable = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) => Card(
        elevation: 1,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: const SmoothRectangleBorder(
          borderRadius: SmoothBorderRadius.all(
            SmoothRadius(
              cornerRadius: MtCorner.Large,
              cornerSmoothing: MtCorner.smoothFactor,
            ),
          ),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 8.0,
            ),
            child: AnimatedSize(
              alignment: Alignment.topCenter,
              duration: MtDurations.moderate,
              curve: MtEasing.linear,
              child: ConditionalParentWidget(
                condition: isSelected || !isExpandable,
                conditionalBuilder: (child) =>
                    AspectRatio(aspectRatio: 1, child: child),
                child: Column(
                  children: [
                    if (header != null) header!,
                    if (isSelected || !isExpandable)
                      Expanded(child: Center(child: body)),
                    if (footer != null) footer!,
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
