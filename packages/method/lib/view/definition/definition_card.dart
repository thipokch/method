import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/card/card.dart';
import 'package:method/view/entry/entry_editor.dart';

import 'definition.dart';

class DefinitionCard extends StatefulWidget with EntryEditor, DefinitionEditor {
  const DefinitionCard({
    super.key,
    required this.taskDefinition,
    required this.entryDefinition,
    required this.bloc,
    this.isStatic = false,
    this.onTap,
    this.onChanged,
  });

  @override
  final EntryBloc bloc;

  @override
  final TaskDefinition taskDefinition;

  @override
  final EntryDefinition? entryDefinition;

  final bool isStatic;

  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  @override
  State<DefinitionCard> createState() => _DefinitionCardState();
}

class _DefinitionCardState extends State<DefinitionCard> {
  late TextEditingController controller;

  @override
  void initState() {
    final text = widget.entryDefinition
        ?.whenOrNull(note: (data, hierarchyPath, id, uuid) => data);
    controller = TextEditingController(text: text);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MtCard(
        controller: controller,
        title: widget.taskDefinition.name,
        description: widget.taskDefinition.description,
        emoji: widget.taskDefinition.icon,
        isStatic: widget.isStatic,
        isSelected: widget.isSelected,
        onTap: widget.onTap,
        onChanged: widget.onChanged,
      );
}
