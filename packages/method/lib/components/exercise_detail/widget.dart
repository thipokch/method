import 'package:method/components/exercise_detail/page.dart';
import 'package:method_bloc/session/session_bloc.dart';

class ExerciseDetail {
  const ExerciseDetail._();

  static final page = SessionBloc.builder(
    builder: (context, state) => state.map(
      exerciseLoaded: (_) => ExerciseDetailPage(exercise: _.exercise),
      sessionLoaded: (_) => ExerciseDetailPage(exercise: _.exercise),
    ),
  );
}
