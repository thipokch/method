import 'package:component/exercise/exercise_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/page/page.dart';

import '../task/task_component.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({super.key});

  @override
  State<StatefulWidget> createState() => ExercisePageState();
}

class ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ExerciseBloc, ExerciseState>(
        builder: (context, state) => MethodPage(
          title: context.read<ExerciseBloc>().state.exercise.name,
          child: Column(
            children: <Widget>[
              ...context
                  .read<ExerciseBloc>()
                  .state
                  .exercise
                  .definitions
                  .map((task) => TaskComponent(task: task)),
            ],
          ),
        ),
      );
}
