import 'package:flutter/material.dart';
import 'package:method_core/model/exercise.dart';

import '../../view/entry/entry_widget.dart';

class ExerciseSliverDetail extends StatelessWidget {
  final Exercise exercise;

  const ExerciseSliverDetail({
    super.key,
    required this.exercise,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: exercise.definitions.length - 1,
        (context, index) => Material(
          type: MaterialType.transparency,
          child: TaskTile.create(task: exercise.definitions[index]),
        ),
      ),
    );
  }
}
