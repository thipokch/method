import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method/session_edit/session_edit.dart';

class ExerciseStartRoute extends GoRouteData {
  const ExerciseStartRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SessionEditBloc(repository: context.read()),
        child: const SessionEditPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
