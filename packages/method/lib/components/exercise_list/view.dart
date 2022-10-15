import 'package:flutter/material.dart';
import 'package:method/route/routes.dart';
import 'package:method_core/model/exercise.dart';

import '../exercise_card/view.dart';
import '../exercise_detail/route.dart';

class ExerciseListView extends StatelessWidget {
  final List<Exercise> exercises;

  const ExerciseListView({
    super.key,
    required this.exercises,
  });

  @override
  Widget build(BuildContext context) => Column(
        children: exercises
            .where((e) => e.id != "note")
            .map<Widget>((e) => ExerciseCardView(
                  exercise: e,
                  onTap: () => ExerciseDetailRoute(e.id).push(context),
                ))
            .toList(),
      );
}
