import 'package:core/model/entry_definition.dart';
import 'package:core/model/task_definition.dart';
import 'package:element/element_scale.dart';
import 'package:emoji/enums.dart';
import 'package:emoji/twemoji_widget.dart';
import 'package:flutter/material.dart';

class DefinitionLabel extends StatelessWidget {
  const DefinitionLabel({
    super.key,
    required this.taskDef,
    required this.entryDef,
    required this.onPressed,
  });

  final TaskDefinition taskDef;
  final EntryDefinition? entryDef;
  final VoidCallback? onPressed;

  bool get isSelected => entryDef != null;

  @override
  Widget build(BuildContext context) {
    // final bloc = context.read<EntryBloc>();

    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        IconButton(
          iconSize: 36.0,
          style: enabledFilledButtonStyle(isSelected, colorScheme),
          padding: const EdgeInsets.all(ElementScale.spaceM),
          onPressed: onPressed,
          // color: colorScheme.primaryContainer,
          icon: SizedBox(
            height: 36.0,
            width: 36.0,
            child: Twemoji(
              emoji: taskDef.icon,
              twemojiFormat: TwemojiFormat.webp,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: ElementScale.spaceS),
          child: Text(
            taskDef.name.toLowerCase(),
            style: textTheme.labelSmall!.copyWith(
              color: colorScheme.onSurfaceVariant,
              letterSpacing: 0.125,
            ),
          ),
        ),
      ],
    );
  }
}

ButtonStyle enabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor: selected ? colors.onPrimary : colors.primary,
    backgroundColor: selected ? colors.primary : colors.surfaceVariant,
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
    hoverColor: selected
        ? colors.onPrimary.withOpacity(0.08)
        : colors.primary.withOpacity(0.08),
    focusColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
    highlightColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
  );
}
