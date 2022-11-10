part of 'exercise_list_bloc.dart';

@freezed
class ExerciseListEvent with _$ExerciseListEvent {
  const ExerciseListEvent._();

  const factory ExerciseListEvent.start() = _Start;
  const factory ExerciseListEvent.destroy() = _Destroy;

  const factory ExerciseListEvent.selectExercise({
    required Exercise exercise,
  }) = _SelectExercise;
}
