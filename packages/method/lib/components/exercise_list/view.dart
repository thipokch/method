import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/route/routes.dart';
import 'package:method_bloc/exercise_list/exercise_list_bloc.dart';

import '../exercise_card/view.dart';
import '../exercise_detail/route.dart';

class ExerciseListView extends StatelessWidget {
  const ExerciseListView({super.key});

  static Widget create() =>
      ExerciseListBloc.provide(child: const ExerciseListView());

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ExerciseListBloc, ExerciseListState>(
        builder: (context, state) => state.when(
          initial: () => TextButton(
            // ignore: no-empty-block
            onPressed: () {},
            child: const Text("add exercise"),
          ),
          loaded: (exercises) => Column(
            children: exercises
                .where((e) => e.id != "note")
                .map<Widget>((e) => ExerciseCardView(
                      exercise: e,
                      onTap: () => ExerciseDetailRoute(e.id).push(context),
                    ))
                .toList(),
          ),
        ),
      );
}
