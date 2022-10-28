import 'package:flutter/material.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_ui/emoji/emoji.dart';

part 'definition_edit_label_sliver.dart';

class DefinitionEditLabelView extends StatelessWidget {
  const DefinitionEditLabelView({
    super.key,
    required this.taskDefinition,
    required this.entryDefinition,
    this.onTap,
  });

  final TaskDefinition taskDefinition;

  final EntryDefinition? entryDefinition;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          _button(
            onTap: onTap,
            icon: taskDefinition.icon,
            style: _buttonStyle(
              entryDefinition != null,
              Theme.of(context).colorScheme,
            ),
          ),
          _label(
            name: taskDefinition.name,
            textTheme: Theme.of(context).textTheme,
            colorScheme: Theme.of(context).colorScheme,
          ),
        ],
      );

  static _label({
    required String name,
    required TextTheme textTheme,
    required ColorScheme colorScheme,
  }) =>
      Padding(
        padding: const EdgeInsets.only(top: ElementScale.spaceS),
        child: Text(
          name,
          style: textTheme.labelSmall!.copyWith(
            color: colorScheme.onSurfaceVariant,
            letterSpacing: 0.125,
          ),
        ),
      );

  static _button({
    required String icon,
    required ButtonStyle style,
    required VoidCallback? onTap,
  }) =>
      IconButton(
        iconSize: 36.0,
        style: style,
        padding: const EdgeInsets.all(ElementScale.spaceM),
        onPressed: onTap,
        // color: colorScheme.primaryContainer,
        icon: SizedBox(
          height: 36.0,
          width: 36.0,
          child: MtEmoji(emoji: icon),
        ),
      );

  static _buttonStyle(bool selected, ColorScheme colorScheme) =>
      IconButton.styleFrom(
        foregroundColor: selected ? colorScheme.onPrimary : colorScheme.primary,
        backgroundColor: selected
            ? colorScheme.primary
            : colorScheme.primary.withOpacity(0.12),
        // backgroundColor: selected ? colors.primary : colors.surfaceVariant,
        disabledForegroundColor: colorScheme.onSurface.withOpacity(0.38),
        disabledBackgroundColor: colorScheme.onSurface.withOpacity(0.12),
        hoverColor: selected
            ? colorScheme.onPrimary.withOpacity(0.08)
            : colorScheme.primary.withOpacity(0.08),
        focusColor: selected
            ? colorScheme.onPrimary.withOpacity(0.12)
            : colorScheme.primary.withOpacity(0.12),
        highlightColor: selected
            ? colorScheme.onPrimary.withOpacity(0.12)
            : colorScheme.primary.withOpacity(0.12),
      );
}
