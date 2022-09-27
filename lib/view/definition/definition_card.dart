import 'package:component/entry/entry_bloc.dart';
import 'package:core/model/task_definition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';

class DefinitionCard extends StatelessWidget {
  const DefinitionCard({
    super.key,
    required this.taskDef,
    this.onTap,
    this.onChanged,
  });

  final TaskDefinition taskDef;

  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<EntryBloc>();
    final entry = bloc.state.whenOrNull(
      entryLoaded: (task, entry) => entry,
    );

    final isExpanded =
        entry?.definitions.where((e) => e.id == taskDef.id).isNotEmpty ?? false;

    return MethodCard(
      title: taskDef.name,
      description: taskDef.description,
      emoji: taskDef.icon,
      isExpanded: isExpanded,
      onTap: onTap,
      // onTap: () => bloc
      //   ..add(const EntryEvent.clearData())
      //   ..add(EntryEvent.updateData(
      //     definition: EntryDefinition.note(
      //       hierarchyPath: taskDef.hierarchyPath,
      //       id: taskDef.id,
      //     ),
      //   )),
      onChanged: (value) => onChanged,
    );
  }
}
