import 'package:element/element_icon.dart';
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
            Icon(ElementIcon.add, size: ElementScale.iconM),
            Icon(ElementIcon.dismiss, size: ElementScale.iconM),
            Icon(ElementIcon.checkmark, size: ElementScale.iconM),
            Icon(ElementIcon.note, size: ElementScale.iconM),
            Icon(ElementIcon.moreVertical, size: ElementScale.iconM),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(ElementIcon.brandArrowLeft, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowUp, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowRight, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowDown, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowUpLeft, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowUpRight, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowDownRight, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowDownLeft, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowDownRight, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowUpDown, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowDownRight, size: ElementScale.iconM),
            Icon(ElementIcon.brandArrowLeftRight, size: ElementScale.iconM),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(ElementIcon.chevronBack, size: ElementScale.iconM),
            Icon(ElementIcon.chevronForward, size: ElementScale.iconM),
            Icon(ElementIcon.chevronUp, size: ElementScale.iconM),
            Icon(ElementIcon.chevronDown, size: ElementScale.iconM),
            Icon(ElementIcon.chevronLeft, size: ElementScale.iconM),
            Icon(ElementIcon.chevronRight, size: ElementScale.iconM),
          ],
        ),
      ],
    );
  }
}
