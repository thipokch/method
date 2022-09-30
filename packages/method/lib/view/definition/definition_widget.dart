import 'package:method_bloc/definition/definition_bloc.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

// part 'definition_card.dart';
// part 'definition_tile.dart';

// ignore: unused_element
class _DefinitionWidget extends StatelessWidget {
  final Widget child;
  final TaskDefinition task;

  const _DefinitionWidget({
    // ignore: unused_element
    super.key,
    required this.task,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => DefinitionBloc(
          repo: context.read<Repository>(),
          task: task,
        ),
        child: child,
      );
}

mixin DefinitionEditor on Widget {
  TaskDefinition get taskDefinition;
  EntryDefinition? get entryDefinition;

  bool get isSelected => entryDefinition != null;
}
