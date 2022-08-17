import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:matter/text/text_area.dart';
import 'package:matter/card/card_tile.dart';

class MethodCard extends StatefulWidget {
  final String title;
  final String description;
  final String emoji;
  final bool isExpanded;

  const MethodCard({
    Key? key,
    required this.title,
    required this.description,
    required this.emoji,
    required this.isExpanded,
  }) : super(key: key);

  @override
  State<MethodCard> createState() => _MethodCardState();
}

class _MethodCardState extends State<MethodCard> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 0,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
            width: ElementScale.borderL,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(ElementScale.cornerLarge),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: (widget.isExpanded)
              ? AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Column(
                    children: [
                      CardTile(
                        emoji: widget.emoji,
                        title: widget.title,
                        description: widget.description,
                      ),
                      const TextArea(),
                    ],
                  ),
                )
              : CardTile(
                  emoji: widget.emoji,
                  title: widget.title,
                  description: widget.description,
                ),
        ),
      ),
    );
  }
}
