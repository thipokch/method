import 'package:component/exercise/exercise_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:matter/page/page.dart';
import 'package:method/view/exercise/exercise_editor.dart';

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
              ButtonTonal(
                child: const Text("Start"),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (childContext) => BlocProvider.value(
                        value: context.read<ExerciseBloc>(),
                        child: const ExerciseEditor(),
                      ),
                    ),
                  );
                },
              ),
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
