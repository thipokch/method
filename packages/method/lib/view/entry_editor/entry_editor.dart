import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_core/util/list.dart';
import 'package:method_style/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/definition/definition_card.dart';
import 'package:method_ui/page/page.dart';
import '../definition/definition_label.dart';

// part 'page/scaffold.dart';
part 'linear.dart';
part 'diverge.dart';
part 'converge.dart';
part 'feedback.dart';

class EntryEditor extends StatelessWidget {
  final BlocWidgetListener<EntryState>? listener;

  const EntryEditor({
    super.key,
    this.listener,
  });

  static Widget create({
    required Task task,
    BlocWidgetListener<EntryState>? listener,
    Entry? entry,
  }) =>
      EntryBloc.provide(
        task: task,
        entry: entry,
        child: EntryEditor(
          listener: listener,
        ),
      );

  @override
  Widget build(BuildContext context) => BlocConsumer<EntryBloc, EntryState>(
        // ignore: no-empty-block
        listener: listener ?? (_, __) {},
        builder: (context, state) {
          final bloc = context.read<EntryBloc>();

          return state.task.map(
            linear: (_) => EntryEditorLinear(bloc: bloc),
            diverge: (_) => EntryEditorDiverge(bloc: bloc),
            converge: (_) => EntryEditorConverge(bloc: bloc),
            feedback: (_) => EntryEditorFeedback(bloc: bloc),
          );
        },
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
