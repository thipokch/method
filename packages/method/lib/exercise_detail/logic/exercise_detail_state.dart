part of 'exercise_detail_bloc.dart';

@freezed
class ExerciseDetailState with _$ExerciseDetailState {
  const ExerciseDetailState._();

  const factory ExerciseDetailState.initial() = _Initial;
  const factory ExerciseDetailState.started({
    required final Exercise exercise,
  }) = _Started;
  const factory ExerciseDetailState.destroyed() = _Destroyed;
  const factory ExerciseDetailState.errored({
    required final Object error,
    required final StackTrace? stackTrace,
  }) = _Errored;
}
