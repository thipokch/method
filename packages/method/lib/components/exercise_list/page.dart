import 'package:flutter/material.dart';
import 'package:method/components/exercise_list/view.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_ui/page/page.dart';

class ExerciseListPage extends StatelessWidget {
  final List<Exercise> exercises;

  const ExerciseListPage({
    super.key,
    required this.exercises,
  });

  @override
  Widget build(BuildContext context) => MtAppPage(
        name: "Journal",
        description: "",
        slivers: [
          SliverToBoxAdapter(
            child: ExerciseListView(exercises: exercises),
          ),
        ],
      );
}
