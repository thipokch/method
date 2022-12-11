import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:method_core/method_core.dart';
import 'package:method_data/method_data.dart';

class ExerciseStartRoute extends GoRouteData {
  const ExerciseStartRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => Method(
        exercise: sampleExercise,
        onResult: (_) {},
      );

  // @override
  // Widget build(BuildContext context) => BlocProvider(
  //       create: (context) => SessionEditBloc(repository: context.read())
  //         ..add(SessionEditEvent.startExercise(exerciseId: id)),
  //       child: const SessionEditView(),
  //     );

  // @override
  // Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
  //     MtSheet(child: build(context));
  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context));
}
