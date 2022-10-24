part of 'exercise_list_bloc.dart';

@freezed
class ExerciseListState with _$ExerciseListState {
  const ExerciseListState._();

  const factory ExerciseListState.initial() = _Initial;
  const factory ExerciseListState.started({
    required final List<Exercise> exercises,
  }) = _Started;
  const factory ExerciseListState.destroyed() = _Destroyed;
  const factory ExerciseListState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
