part of 'exercise_list_bloc.dart';

@freezed
class ExerciseListEvent with _$ExerciseListEvent {
  const factory ExerciseListEvent.load({
    @Default(null) List<Exercise>? boostrap,
  }) = _Load;

  const factory ExerciseListEvent.update({
    required List<Exercise> exercises,
  }) = _Update;
}
