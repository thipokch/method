import 'package:element/element_symbol.dart';
import 'package:element/element_scale.dart';
import 'package:element/element_motion.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:matter/card/card_tile.dart';

import '../text/text_area.dart';

class MethodCard extends StatefulWidget {
  final String title;
  final String description;
  final String emoji;
  final bool isExpanded;
  final bool? autofocus;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;

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
  State<MethodCard> createState() => _MethodCardState();
}

class _MethodCardState extends State<MethodCard> {
  @override
  Widget build(BuildContext context) {
    final tile = CardTile(
      emoji: widget.emoji,
      title: widget.title,
      description: widget.description,
      trailing: AnimatedCrossFade(
        firstChild: const Icon(ElementSymbol.dismiss),
        secondChild: const Icon(ElementSymbol.add),
        crossFadeState: widget.isExpanded
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: ElementMotion.moderate,
      ),
      // AnimatedSwitcher(
      //   transitionBuilder: (child, animation) => ScaleTransition(
      //     scale: animation,
      //     child: child,
      //   ),
      //   duration: Duration(milliseconds: 300),
      //   child: widget.isExpanded
      //       ? Icon(ElementSymbol.dismiss)
      //       : Icon(ElementSymbol.add),
      // ),
    );

    return Card(
      elevation: 0,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: SmoothRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
          width: ElementScale.strokeL,
        ),
        borderRadius: const SmoothBorderRadius.all(
          SmoothRadius(
            cornerRadius: ElementScale.cornerLarge,
            cornerSmoothing: ElementScale.cornerSmoothFactor,
          ),
        ),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedSize(
            alignment: Alignment.topCenter,
            duration: ElementMotion.moderate,
            curve: ElementMotion.linear,
            child: widget.isExpanded
                ? AspectRatio(
                    aspectRatio: 1,
                    child: Column(
                      children: [
                        tile,
                        // if (widget.isExpanded)
                        //   Expanded(
                        //     child: Container(
                        //       decoration: BoxDecoration(
                        //         color: Theme.of(context).colorScheme.primary,
                        //       ),
                        //       // child: TextArea(
                        //       //   onTap: widget.onTap,
                        //       //   autofocus: widget.autofocus,
                        //       //   onChanged: widget.onChanged,
                        //       // ),
                        //     ),
                        //   ),

                        if (widget.isExpanded)
                          TextArea(
                            controller: widget.controller,
                            onTap: widget.onTap,
                            autofocus: widget.autofocus,
                            onChanged: widget.onChanged,
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
