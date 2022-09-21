import 'package:component/session_list/session_list_bloc.dart';
import 'package:core/model/session.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/content/content.dart';
import 'package:repository/repository.dart';

part 'session_list_view.dart';

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
            SessionListBloc(repo: repo)..add(const SessionListEvent.load()),
        child: child,
      );
}
