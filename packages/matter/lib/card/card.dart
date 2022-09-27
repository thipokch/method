import 'package:element/element_symbol.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_motion.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:matter/card/card_tile.dart';

import '../text/text_area.dart';

class MethodCard extends StatelessWidget {
  final String title;
  final String description;
  final String emoji;
  final bool? autofocus;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;
  final bool isExpanded;

  const MethodCard({
    Key? key,
    required this.title,
    required this.description,
    required this.emoji,
    required this.isExpanded,
    this.autofocus,
    this.onChanged,
    this.onTap,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tile = CardTile(
      emoji: emoji,
      title: title,
      description: description,
      trailing: AnimatedCrossFade(
        firstChild: const Icon(ElementSymbol.dismiss),
        secondChild: const Icon(ElementSymbol.add),
        crossFadeState:
            isExpanded ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: ElementMotion.moderate,
      ),
    );

    return Card(
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
        onTap: (() {
          onTap?.call();
          // setState(() {
          //   isExpanded = !isExpanded;
          // });
        }),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 8.0,
          ),
          child: AnimatedSize(
            alignment: Alignment.topCenter,
            duration: ElementMotion.moderate,
            curve: ElementMotion.linear,
            child: isExpanded
                ? AspectRatio(
                    aspectRatio: 1,
                    child: Column(
                      children: [
                        tile,
                        if (isExpanded)
                          TextArea(
                            controller: controller,
                            onTap: onTap,
                            autofocus: autofocus,
                            onChanged: onChanged,
                          ),
                      ],
                    ),
                  )
                : tile,
          ),
        ),
      ),
    );
  }
}
