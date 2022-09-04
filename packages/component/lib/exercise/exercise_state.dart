part of 'exercise_bloc.dart';

@freezed
class ExerciseState with _$ExerciseState {
  // const factory ExerciseState.initial() = _Initial;

  const factory ExerciseState.exerciseLoaded({
    required Exercise exercise,
  }) = _ExerciseLoaded;

  const factory ExerciseState.sessionLoaded({
    required Exercise exercise,
    required Session session,
  }) = _SessionLoaded;
}
