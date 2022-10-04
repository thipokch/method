import 'package:method_bloc/entry/entry_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_style/element_scale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/definition/definition_card.dart';
import 'package:method_ui/page/page.dart';
import '../definition/definition_label.dart';

// part 'page/scaffold.dart';
part 'page/linear.dart';
part 'page/diverge.dart';
part 'page/converge.dart';
part 'page/feedback.dart';

class EntryPage extends StatelessWidget {
  const EntryPage({
    super.key,
    required this.listener,
  });

  final BlocWidgetListener<EntryState> listener;

  @override
  Widget build(BuildContext context) => BlocConsumer<EntryBloc, EntryState>(
        listener: listener,
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
  List<EntryDefinition>? get entryDefinitions => entry?.definitions;
  Map<String, EntryDefinition?>? get mappedDefinitions =>
      entry?.mappedDefinitions;
}
