import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method/session_edit/session_edit.dart';
import 'package:method/util/sheet.dart';

class ExerciseStartRoute extends GoRouteData {
  const ExerciseStartRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => SessionEditBloc(repository: context.read())
          ..add(SessionEditEvent.startExercise(exerciseId: id)),
        child: const SessionEditView(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      MtSheet(child: build(context));
  // CupertinoPage(child: build(context));
}
