import 'package:element/element_symbol.dart';
import 'package:element/element_scale.dart';
import 'package:flutter/material.dart';

class IconographyPreview extends StatelessWidget {
  const IconographyPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(ElementSymbol.add, size: ElementScale.iconM),
            Icon(ElementSymbol.dismiss, size: ElementScale.iconM),
            Icon(ElementSymbol.checkmark, size: ElementScale.iconM),
            Icon(ElementSymbol.note, size: ElementScale.iconM),
            Icon(ElementSymbol.moreVertical, size: ElementScale.iconM),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(ElementSymbol.brandArrowLeft, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowUp, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowRight, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowDown, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowUpLeft, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowUpRight, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowDownRight, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowDownLeft, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowDownRight, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowUpDown, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowDownRight, size: ElementScale.iconM),
            Icon(ElementSymbol.brandArrowLeftRight, size: ElementScale.iconM),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(ElementSymbol.chevronBack, size: ElementScale.iconM),
            Icon(ElementSymbol.chevronForward, size: ElementScale.iconM),
            Icon(ElementSymbol.chevronUp, size: ElementScale.iconM),
            Icon(ElementSymbol.chevronDown, size: ElementScale.iconM),
            Icon(ElementSymbol.chevronLeft, size: ElementScale.iconM),
            Icon(ElementSymbol.chevronRight, size: ElementScale.iconM),
          ],
        ),
      ],
    );
  }
}
