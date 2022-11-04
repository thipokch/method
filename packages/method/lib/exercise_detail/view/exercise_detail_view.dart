import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/exercise_detail/logic/logic.dart';
import 'package:method_core/model/task.dart';
import 'package:method_ui/emoji/riso_emoji.dart';

// import '../exercise_detail.dart';

part 'exercise_detail_sliver.dart';

class ExerciseDetailView extends StatelessWidget {
  const ExerciseDetailView({super.key});

  @override
  Widget build(BuildContext context) => ExerciseDetailBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => ListView.builder(
            itemCount: _.exercise.definitions.length - 1, // Subtract Feedback
            itemBuilder: (context, index) =>
                _DetailTile(task: _.exercise.definitions[index]),
          ),
          orElse: () => const CupertinoActivityIndicator(),
        ),
      );
}

class _DetailTile extends StatelessWidget {
  final Task task;

  const _DetailTile({required this.task});

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(task.name),
        subtitle: Text(task.description),
        leading: MtRisoEmoji(
          shaders: context.read(),
          emoji: task.icon,
          width: 48,
          height: 48,
        ),
        // isExpanded: false,
        // onTap: () {},
      );
}
