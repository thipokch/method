import 'package:flutter/material.dart';
import 'package:method_core/model/exercise.dart';

import '../task_tile/view.dart';

class ExerciseDetailSliver extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailSliver({
    super.key,
    required this.exercise,
  });

  @override
  Widget build(BuildContext context) => SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: exercise.definitions.length - 1,
          (context, index) => Material(
            type: MaterialType.transparency,
            child: TaskTile(task: exercise.definitions[index]),
          ),
        ),
      );
}
