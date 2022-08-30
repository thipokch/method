import 'package:element/element_symbol.dart';
import 'package:element/element_scale.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/material.dart';
import 'package:matter/text/text_area.dart';
import 'package:matter/card/card_tile.dart';

class MethodCard extends StatefulWidget {
  final String title;
  final String description;
  final String emoji;
  final bool isExpanded;
  final bool? autofocus;
  final ValueChanged<String>? onChanged;
  final GestureTapCallback? onTap;

  const MethodCard({
    Key? key,
    required this.title,
    required this.description,
    required this.emoji,
    required this.isExpanded,
    this.autofocus,
    this.onChanged,
    this.onTap,
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
        firstChild: const Icon(ElementSymbol.dismissFilled),
        secondChild: const Icon(ElementSymbol.addFilled),
        crossFadeState: widget.isExpanded
            ? CrossFadeState.showFirst
            : CrossFadeState.showSecond,
        duration: const Duration(seconds: 300),
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
          width: ElementScale.borderL,
        ),
        borderRadius: const SmoothBorderRadius.all(SmoothRadius(
          cornerRadius: ElementScale.cornerLarge,
          cornerSmoothing: 0.6,
        )),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedSize(
            alignment: Alignment.topCenter,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOutCubic,
            child: widget.isExpanded
                ? AspectRatio(
                    aspectRatio: 1,
                    child: Column(
                      children: [
                        tile,
                        // if (widget.isExpanded)
                        TextArea(
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
