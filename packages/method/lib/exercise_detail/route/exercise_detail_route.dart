import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../exercise_detail.dart';

class ExerciseDetailRoute extends GoRouteData {
  const ExerciseDetailRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => const ExerciseDetailPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
