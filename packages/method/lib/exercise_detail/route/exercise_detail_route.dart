import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../exercise_detail.dart';

class ExerciseDetailRoute extends GoRouteData {
  const ExerciseDetailRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ExerciseDetailBloc(
          id: id,
          repository: context.read(),
        ),
        child: const ExerciseDetailPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context));
}
