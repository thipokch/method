import 'package:method_style/method_style.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookUseCase(name: 'Default', type: MtSymbols)
Widget buildSymbols(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(MtSymbols.add, size: MtSymbolSizes.M),
            Icon(MtSymbols.dismiss, size: MtSymbolSizes.M),
            Icon(MtSymbols.checkmark, size: MtSymbolSizes.M),
            Icon(MtSymbols.note, size: MtSymbolSizes.M),
            Icon(MtSymbols.moreVertical, size: MtSymbolSizes.M),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(MtSymbols.brandArrowLeft, size: MtSymbolSizes.M),
            Icon(MtSymbols.brandArrowUp, size: MtSymbolSizes.M),
            Icon(MtSymbols.brandArrowRight, size: MtSymbolSizes.M),
            Icon(MtSymbols.brandArrowDown, size: MtSymbolSizes.M),
            Icon(MtSymbols.brandArrowUpLeft, size: MtSymbolSizes.M),
            Icon(MtSymbols.brandArrowUpRight, size: MtSymbolSizes.M),
            // Icon(MtSymbols.brandArrowDownRight, size: MtSymbolSizes.M),
            Icon(MtSymbols.brandArrowDownLeft, size: MtSymbolSizes.M),
            // Icon(MtSymbols.brandArrowDownRight, size: MtSymbolSizes.M),
            Icon(MtSymbols.brandArrowUpDown, size: MtSymbolSizes.M),
            // Icon(MtSymbols.brandArrowDownRight, size: MtSymbolSizes.M),
            // Icon(MtSymbols.brandArrowLeftRight, size: MtSymbolSizes.M),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(MtSymbols.chevronBack, size: MtSymbolSizes.M),
            Icon(MtSymbols.chevronForward, size: MtSymbolSizes.M),
            Icon(MtSymbols.chevronUp, size: MtSymbolSizes.M),
            Icon(MtSymbols.chevronDown, size: MtSymbolSizes.M),
            Icon(MtSymbols.chevronLeft, size: MtSymbolSizes.M),
            Icon(MtSymbols.chevronRight, size: MtSymbolSizes.M),
          ],
        ),
      ],
    ),
  );
}
