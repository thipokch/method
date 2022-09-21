import 'package:component/exercise_list/exercise_list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/view/session/session_widget.dart';
import 'package:repository/repository.dart';

part 'exercise_list_view.dart';

class _ExerciseListWidget extends StatelessWidget {
  final Widget child;
  final Repository repo;

  const _ExerciseListWidget({
    // ignore: unused_element
    super.key,
    required this.repo,
    required this.child,
  });

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            ExerciseListBloc(repo: repo)..add(const ExerciseListEvent.load()),
        child: child,
      );
}
