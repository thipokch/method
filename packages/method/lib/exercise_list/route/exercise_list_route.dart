import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../exercise_list.dart';

class ExerciseListRoute extends GoRouteData {
  const ExerciseListRoute();

  @override
  Widget build(BuildContext context) => const ExerciseListPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
