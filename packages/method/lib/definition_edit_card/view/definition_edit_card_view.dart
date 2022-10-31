import 'package:flutter/material.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_style/element_motion.dart';
import 'package:method_style/element_symbol.dart';
import 'package:method_ui/card/card.dart';
import 'package:method_ui/card/card_text_edit.dart';
import 'package:method_ui/card/card_tile.dart';

part 'definition_edit_card_sliver.dart';

class DefinitionEditCardView extends StatelessWidget {
  const DefinitionEditCardView({
    super.key,
    required this.taskDefinition,
    this.entryDefinition,
    this.controller,
    required this.isSelected,
    required this.isStatic,
    this.onTap,
    this.onChanged,
    this.autoFocus,
  });

  final TaskDefinition taskDefinition;

  final EntryDefinition? entryDefinition;

  final TextEditingController? controller;
  final bool? autoFocus;
  final bool isSelected;
  final bool isStatic;

  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) => MtCard(
        header: isStatic
            ? null
            : _CardHeader(
                key: key,
                taskDefinition: taskDefinition,
                isSelected: isSelected,
              ),
        isExpandable: !isStatic,
        isSelected: isSelected,
        onTap: onTap,
        body: CardTextEdit(
          initialText: entryDefinition?.mapOrNull(
            note: (value) => value.data,
          ),
          autoFocus: autoFocus,
          onChanged: onChanged,
          onTap: onTap,
        ),
      );
}

class _CardHeader extends StatelessWidget {
  const _CardHeader({
    super.key,
    required this.taskDefinition,
    required this.isSelected,
  });

  final TaskDefinition taskDefinition;
  final bool isSelected;

  @override
  Widget build(BuildContext context) => CardTile(
        emoji: taskDefinition.icon,
        title: taskDefinition.name,
        description: taskDefinition.description,
        trailing: AnimatedCrossFade(
          firstChild: const Icon(ElementSymbol.dismiss),
          secondChild: const Icon(ElementSymbol.add),
          crossFadeState:
              isSelected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: ElementMotion.moderate,
        ),
      );
}
