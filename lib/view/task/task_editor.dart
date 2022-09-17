import 'package:component/task/task_bloc.dart';
import 'package:core/model/task_definition.dart';
import 'package:element/element_motion.dart';
import 'package:element/element_scale.dart';
import 'package:emoji/enums.dart';
import 'package:emoji/twemoji_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';

part 'task_editor_scaffold.dart';
part 'task_editor_linear.dart';
part 'task_editor_diverge.dart';
part 'task_editor_converge.dart';
part 'task_editor_feedback.dart';

class TaskEditor extends StatelessWidget {
  const TaskEditor({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<TaskBloc, TaskState>(
        builder: ((context, state) {
          final textTheme = Theme.of(context).textTheme;
          final colorScheme = Theme.of(context).colorScheme;

          return state.task.map(
            linear: (value) => TaskEditorLinear(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
            diverge: (value) => TaskEditorDiverge(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
            converge: (value) => TaskEditorConverge(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
            feedback: (value) => TaskEditorFeedback(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
          );
        }),
      );
}
