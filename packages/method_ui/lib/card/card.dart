import 'package:method_style/element_scale.dart';
import 'package:method_style/element_motion.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/util/conditional_parent_widget.dart';

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
              cornerRadius: ElementScale.cornerLarge,
              cornerSmoothing: ElementScale.cornerSmoothFactor,
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
              duration: ElementMotion.moderate,
              curve: ElementMotion.linear,
              child: ConditionalParentWidget(
                condition: isSelected || !isExpandable,
                conditionalBuilder: (child) =>
                    AspectRatio(aspectRatio: 1, child: child),
                child: Column(
                  children: [
                    if (header != null) header!,
                    if (isSelected || !isExpandable) Expanded(child: body),
                    if (footer != null) footer!,
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
