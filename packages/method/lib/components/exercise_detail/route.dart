import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/exercise_detail/widget.dart';

import '../../util/future/future_provider.dart';

class ExerciseDetailRoute extends GoRouteData {
  final String id;

  const ExerciseDetailRoute(this.id);

  @override
  Widget build(BuildContext context) => FutureSwitcher.provideExercise(
        id: id,
        onData: ExerciseDetail.page,
        onError: (_) => const CupertinoActivityIndicator(),
        onWait: const CupertinoActivityIndicator(),
        // onDone:  SessionEditor(),
      );
}
