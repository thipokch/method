import 'package:figma_squircle/figma_squircle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_alert/flutter_platform_alert.dart';
import 'package:method/route/routes.dart';
import 'package:method/view/session/session_card_preview.dart';
import 'package:method/view/session/session_widget.dart';
import 'package:method_bloc/session_list/session_list_bloc.dart';
import 'package:method_core/model/exercise.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';
import 'package:method_style/element_scale.dart';
import 'package:method_style/element_symbol.dart';

part 'session_list_view.dart';

class _ExerciseList extends StatelessWidget {
  final Widget child;
  final SessionListBloc Function(BuildContext context, Repository repo)
      onCreate;
  // final Repository repo;

  const _ExerciseList._({
    // ignore: unused_element
    super.key,
    // required this.repo,
    required this.onCreate,
    required this.child,
  });

  factory _ExerciseList.create({
    // required final Repository repo,
    required final Widget child,
  }) =>
      _ExerciseList._(
        // repo: repo,
        onCreate: ((context, repo) =>
            SessionListBloc(repo: repo)..add(const SessionListEvent.load())),
        child: child,
      );

  factory _ExerciseList.createByExercise({
    // required final Repository repo,
    required final Exercise exercise,
    required final Widget child,
  }) =>
      _ExerciseList._(
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
