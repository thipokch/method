import 'package:flutter/cupertino.dart';
import 'package:method/components/entry_converge_edit/component.dart';
import 'package:method/components/entry_feedback_edit/component.dart';
import 'package:method/components/entry_linear_edit/component.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';

import '../../util/bloc/widget_listener.dart';
import '../entry_diverge_edit/component.dart';

class EntryEdit {
  const EntryEdit._();

  static Widget create({
    required Task task,
    Entry? entry,
    BlocWidgetListener<EntryState>? listener,
  }) =>
      EntryBloc.provider(
        task: task,
        entry: entry,
        listener: listener,
        child: page(task),
      );

  static Widget page(Task task) => task.map(
        linear: (_) => EntryLinearEdit.page,
        diverge: (_) => EntryDivergeEdit.page,
        converge: (_) => EntryConvergeEdit.page,
        feedback: (_) => EntryFeedbackEdit.page,
      );
}

typedef Definition = MapEntry<TaskDefinition, EntryDefinition?>;

mixin EntryEditVariant on Widget {
  Entry get entry;

  Task get task => entry.template;
  List<TaskDefinition> get taskDefinitions => task.definitions;
  List<EntryDefinition?> get entryDefinitions => entry.definitions;

  int get length => taskDefinitions.length;
  // List<Definition> get definitions => entry.mappedDefinition;
  // List<Definition> get definitions =>
  //     List.generate(length, (_) => _).map((_) => definitionAt(_)).toList();

  Definition definitionAt(int index) =>
      Definition(taskAt(index), entryAt(index));

  TaskDefinition taskAt(int index) => taskDefinitions.elementAtOrNull(index)!;

  EntryDefinition? entryAt(int index) =>
      entryDefinitions.elementAtOrNull(index);
}

mixin DefinitionEdit on Widget {
  TaskDefinition get taskDefinition;
  EntryDefinition? get entryDefinition;

  Definition get definition => Definition(taskDefinition, entryDefinition);

  bool get isSelected => entryDefinition != null;
}

extension DefinitionEntry on Definition {
  TaskDefinition get task => key;
  EntryDefinition? get entry => value;
}
