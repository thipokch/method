part of 'exercise_list_bloc.dart';

@freezed
class ExerciseListState with _$ExerciseListState {
  const factory ExerciseListState.initial() = _Initial;

  const factory ExerciseListState.loaded({
    required List<Exercise> exercises,
  }) = _Loaded;
}
