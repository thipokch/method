import 'package:component/entry/entry_bloc.dart';
import 'package:core/model/entry_definition.dart';
import 'package:core/model/task_definition.dart';
import 'package:flutter/material.dart';
import 'package:matter/card/card.dart';
import 'package:method/view/entry/entry_editor.dart';

import 'definition_widget.dart';

class DefinitionCard extends StatefulWidget with EntryEditor, DefinitionEditor {
  const DefinitionCard({
    super.key,
    required this.taskDefinition,
    required this.entryDefinition,
    required this.bloc,
    bool? isSelected,
    this.onTap,
    this.onChanged,
  }) : _isSelected = isSelected;

  @override
  final EntryBloc bloc;

  @override
  final TaskDefinition taskDefinition;

  @override
  final EntryDefinition? entryDefinition;

  @override
  bool get isSelected => _isSelected ?? super.isSelected;
  final bool? _isSelected;

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
  Widget build(BuildContext context) {
    return MethodCard(
      controller: controller,
      title: widget.taskDefinition.name,
      description: widget.taskDefinition.description,
      emoji: widget.taskDefinition.icon,
      isExpanded: widget.isSelected,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
    );
  }
}
