part of 'exercise_detail_bloc.dart';

@freezed
class ExerciseDetailState {
  const ExerciseDetailState._();

  const factory ExerciseDetailState.initial() = _Initial;
  const factory ExerciseDetailState.created() = _Created;
  const factory ExerciseDetailState.started() = _Started;
  const factory ExerciseDetailState.resumed() = _Resumed;
  const factory ExerciseDetailState.destroyed() = _Destroyed;
  const factory ExerciseDetailState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
