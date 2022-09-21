import 'package:component/entry/entry_bloc.dart';
import 'package:core/model/task_definition.dart';
import 'package:element/element_motion.dart';
import 'package:element/element_scale.dart';
import 'package:emoji/enums.dart';
import 'package:emoji/twemoji_widget.dart';
import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/card/card.dart';

part 'editor/scaffold.dart';
part 'editor/linear.dart';
part 'editor/diverge.dart';
part 'editor/converge.dart';
part 'editor/feedback.dart';

class EntryEditor extends StatelessWidget {
  const EntryEditor({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<EntryBloc, EntryState>(
        builder: ((context, state) {
          final textTheme = Theme.of(context).textTheme;
          final colorScheme = Theme.of(context).colorScheme;

          return state.task.map(
            linear: (value) => EntryEditorLinear(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
            diverge: (value) => EntryEditorDiverge(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
            converge: (value) => EntryEditorConverge(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
            feedback: (value) => EntryEditorFeedback(
              textTheme: textTheme,
              colorScheme: colorScheme,
            ),
          );
        }),
      );
}
