import 'package:method/components/entry_converge_edit/view.dart';
import 'package:method/components/entry_diverge_edit/view.dart';
import 'package:method/components/entry_feedback_edit/view.dart';
import 'package:method/components/entry_linear_edit/view.dart';
import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntryEditView extends StatelessWidget {
  const EntryEditView._();

  static Widget create({
    required Task task,
    Entry? entry,
    BlocWidgetListener<EntryState>? listener,
  }) =>
      EntryBloc.provide(
        task: task,
        entry: entry,
        listener: listener,
        child: const EntryEditView._(),
      );

  @override
  Widget build(BuildContext context) => BlocBuilder<EntryBloc, EntryState>(
        builder: (context, state) => state.task.map(
          linear: (_) => EntryLinearEditView(bloc: context.read()),
          diverge: (_) => EntryDivergeEditView(bloc: context.read()),
          converge: (_) => EntryConvergeEditView(bloc: context.read()),
          feedback: (_) => EntryFeedbackEditView(bloc: context.read()),
        ),
      );
}

mixin EntryDefinitionConsumer on Widget {
  EntryBloc get bloc;

  EntryState get state => bloc.state;
  Task get task => bloc.state.task;
  Entry? get entry =>
      bloc.state.whenOrNull(entryLoaded: (task, entry) => entry);

  List<TaskDefinition> get taskDefinitions => task.definitions;
  List<EntryDefinition?>? get entryDefinitions => entry?.definitions;
}
