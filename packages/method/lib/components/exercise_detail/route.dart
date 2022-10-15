import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/exercise_detail/widget.dart';

import '../../util/future/future_provider.dart';

class ExerciseDetailRoute extends GoRouteData {
  final String id;

  const ExerciseDetailRoute(this.id);

  @override
  Widget build(BuildContext context) => FutureProvider.exercise(
        id: id,
        onData: ExerciseDetail.page,
        onError: (_) => const CupertinoActivityIndicator(),
        onWait: const CupertinoActivityIndicator(),
        // onDone:  SessionEditor(),
      );
}

// static newSession({
//   required Repository repo,
//   required String exerciseId,
// }) {
//   final sessionId = DateTime.now().millisecondsSinceEpoch.toString();

//   repo.exercises
//       .get(exerciseId)
//       .then(
//         (exercise) async => await repo.sessions.put(
//           Session.create(
//             template: exercise!,
//             hierarchyPath: "${exercise.hierarchyPath}/${exercise.id}",
//             id: sessionId,
//           ),
//         ),
//       )
//       .then((_) =>
//           SessionEditRoute(sessionId).push(sceneNavigator.currentContext!));

//   // return sessionId;
// }
