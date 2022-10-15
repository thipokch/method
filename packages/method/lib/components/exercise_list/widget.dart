import 'package:flutter/cupertino.dart';
import 'package:method/components/exercise_list/page.dart';
import 'package:method_bloc/exercise_list/exercise_list_bloc.dart';

class ExerciseList {
  const ExerciseList._();

  static final page = ExerciseListBloc.builder(
    builder: (context, state) => state.map(
      initial: (_) => const CupertinoActivityIndicator(),
      loaded: (_) => ExerciseListPage(exercises: _.exercises),
    ),
  );
}
