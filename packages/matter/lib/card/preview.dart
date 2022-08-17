import 'package:flutter/material.dart';

import '../preview_helper.dart';
import 'card.dart';

class CardPreview extends StatelessWidget {
  const CardPreview({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    const Widget _divider = Preview.rowDivider;

    return Column(
      children: const [
        _MaterialCardPreview(),
        _divider,
        MethodCard(
          title: "Collapse",
          description: "Tap to collapse...",
          emoji: "👅",
          isExpanded: false,
        ),
        _divider,
        MethodCard(
          title: "Expanded",
          description: "Tap to start writing...",
          emoji: "👌",
          isExpanded: true,
        ),
      ],
    );
  }
}

class _MaterialCardPreview extends StatelessWidget {
  const _MaterialCardPreview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: Preview.cardWidth,
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.more_vert),
                  ),
                  SizedBox(height: 35),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Elevated"),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: Preview.cardWidth,
          child: Card(
            color: Theme.of(context).colorScheme.surfaceVariant,
            elevation: 0,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.more_vert),
                  ),
                  SizedBox(height: 35),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Filled"),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: Preview.cardWidth,
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(12)),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.more_vert),
                  ),
                  SizedBox(height: 35),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Outlined"),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
