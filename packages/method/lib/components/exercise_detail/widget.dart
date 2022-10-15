import 'package:method/components/exercise_detail/page.dart';
import 'package:method/route/routes.dart';
import 'package:method_bloc/session/session_bloc.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/repository.dart';

import '../session_edit/route.dart';

class ExerciseDetail {
  const ExerciseDetail._();

  static newSession({
    required Repository repo,
    required String exerciseId,
  }) {
    final sessionId = DateTime.now().millisecondsSinceEpoch.toString();

    repo.exercises
        .get(exerciseId)
        .then(
          (exercise) async => await repo.sessions.put(
            Session.create(
              template: exercise!,
              hierarchyPath: "${exercise.hierarchyPath}/${exercise.id}",
              id: sessionId,
            ),
          ),
        )
        .then((_) =>
            SessionEditRoute(sessionId).push(sceneNavigator.currentContext!));

    // return sessionId;
  }

  static final page = SessionBloc.builder(
    builder: (context, state) => state.map(
      exerciseLoaded: (_) => ExerciseDetailPage(exercise: _.exercise),
      sessionLoaded: (_) => ExerciseDetailPage(exercise: _.exercise),
    ),
  );
}
