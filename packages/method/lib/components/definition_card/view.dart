// ignore_for_file: unused_import

import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:flutter/material.dart';
import 'package:method_ui/card/card.dart';
import 'package:method_ui/card/card_editing.dart';

import '../definition_edit/util.dart';
import '../entry_edit/view.dart';

class DefinitionCardView extends StatefulWidget
    with EntryDefinitionConsumer, DefinitionEdit {
  @override
  final EntryBloc bloc;

  @override
  final TaskDefinition taskDefinition;

  @override
  final EntryDefinition? entryDefinition;

  final bool isStatic;
  final bool showMeta;

  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  const DefinitionCardView({
    super.key,
    required this.taskDefinition,
    required this.entryDefinition,
    required this.bloc,
    this.showMeta = true,
    this.isStatic = false,
    this.onTap,
    this.onChanged,
  });

  @override
  State<DefinitionCardView> createState() => _DefinitionCardViewState();
}

class _DefinitionCardViewState extends State<DefinitionCardView> {
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
  Widget build(BuildContext context) => MtEditingCard(
        controller: controller,
        title: widget.taskDefinition.name,
        description: widget.taskDefinition.description,
        emoji: widget.taskDefinition.icon,
        showMeta: widget.showMeta,
        isStatic: widget.isStatic,
        isSelected: widget.isSelected,
        onTap: widget.onTap,
        onChanged: widget.onChanged,
      );
}
