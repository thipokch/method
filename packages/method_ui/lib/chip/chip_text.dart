import 'package:method_ui/element_scale.dart';
import 'package:flutter/material.dart';

class ChipText extends StatelessWidget {
  final String text;
  final ValueChanged<bool>? onSelected;
  final bool selected;

  const ChipText({
    Key? key,
    required this.text,
    this.onSelected,
    required this.selected,
  }) : super(key: key);

  bool get isEnabled => onSelected != null;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return ChoiceChip(
      side: BorderSide(
        width: ElementScale.strokeL,
        color: isEnabled
            ? colorScheme.primary
            : colorScheme.outline.withOpacity(0.12),
      ),
      selectedColor: colorScheme.primary,
      backgroundColor: Colors.transparent,
      disabledColor: Colors.transparent,
      onSelected: onSelected,
      pressElevation: 0.0,
      label: Text(
        text,
        style: textTheme.button?.copyWith(
          color: isEnabled
              ? (selected ? colorScheme.onPrimary : colorScheme.primary)
              : colorScheme.onSurface,
        ),
      ),
      selected: selected,
    );
  }
}
