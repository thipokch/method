import 'package:method_bloc/session_list/session_list_bloc.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/content/content.dart';
import 'package:method_repo/repository.dart';

part 'session_list_view.dart';

class _ExerciseListWidget extends StatelessWidget {
  final Widget child;
  final SessionListBloc Function(BuildContext context, Repository repo)
      onCreate;
  // final Repository repo;

  const _ExerciseListWidget._({
    // ignore: unused_element
    super.key,
    // required this.repo,
    required this.onCreate,
    required this.child,
  });

  factory _ExerciseListWidget.create({
    // required final Repository repo,
    required final Widget child,
  }) =>
      _ExerciseListWidget._(
        // repo: repo,
        onCreate: ((context, repo) =>
            SessionListBloc(repo: repo)..add(const SessionListEvent.load())),
        child: child,
      );

  factory _ExerciseListWidget.createByExercise({
    // required final Repository repo,
    required final Exercise exercise,
    required final Widget child,
  }) =>
      _ExerciseListWidget._(
        // repo: repo,
        onCreate: ((context, repo) => SessionListBloc(repo: repo)
          ..add(SessionListEvent.loadByExercise(exercise: exercise))),
        child: child,
      );

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => onCreate(
          context,
          context.read<Repository>(),
        ),
        child: child,
      );
}
