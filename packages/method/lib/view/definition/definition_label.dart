import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_emoji/enums.dart';
import 'package:method_emoji/twemoji_widget.dart';
import 'package:flutter/material.dart';

import '../entry/entry_editor.dart';
import 'definition_widget.dart';

class DefinitionLabel extends StatelessWidget
    with EntryEditor, DefinitionEditor {
  const DefinitionLabel({
    super.key,
    required this.taskDefinition,
    required this.entryDefinition,
    required this.bloc,
    required this.onPressed,
  });
  @override
  final EntryBloc bloc;

  @override
  final TaskDefinition taskDefinition;

  @override
  final EntryDefinition? entryDefinition;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
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
              emoji: taskDefinition.icon,
              twemojiFormat: TwemojiFormat.webp,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: ElementScale.spaceS),
          child: Text(
            taskDefinition.name.toLowerCase(),
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
