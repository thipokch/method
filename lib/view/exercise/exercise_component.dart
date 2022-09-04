import 'package:component/exercise/exercise_bloc.dart';
import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:matter/button/button_tonal.dart';
import 'package:method/view/exercise/exercise_page.dart';

class ExerciseComponent extends StatefulWidget {
  final Exercise exercise;
  final Session? session;

  const ExerciseComponent({
    super.key,
    required this.exercise,
    this.session,
  });

  @override
  State<StatefulWidget> createState() => ExerciseComponentState();
}

class ExerciseComponentState extends State<ExerciseComponent> {
  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ExerciseBloc(exercise: widget.exercise),
        child: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) => ButtonTonal(
            child: Text(context.read<ExerciseBloc>().state.exercise.name),
            onPressed: () {
              final bloc = context.read<ExerciseBloc>();

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: bloc,
                    child: const ExercisePage(),
                  ),
                ),
              );

              // bloc.add(
              //   TaskEvent.loadEntry(
              //     entry: Entry.create(
              //       template: bloc.state.task,
              //       collectionSlug: "collectionSlug",
              //       hierarchyPath: "hierarchyPath",
              //       id: "id",
              //     ),
              //   ),
              // );
            },
          ),
          // Column(
          //   children: [
          //     ...context.read<ExerciseBloc>().state.exercise.definitions.map(
          //           (task) => TaskComponent(task: task),
          //         ),
          //   ],
          // ),
        ),
      );
}
