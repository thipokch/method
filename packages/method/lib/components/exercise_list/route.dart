import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/exercise_list/widget.dart';
import 'package:method_bloc/exercise_list/exercise_list_bloc.dart';

class ExerciseListRoute extends GoRouteData {
  const ExerciseListRoute();

  @override
  Widget build(BuildContext context) =>
      ExerciseListBloc.provider(child: ExerciseList.page);
}
