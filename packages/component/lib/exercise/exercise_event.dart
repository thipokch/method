part of 'exercise_bloc.dart';

@freezed
class ExerciseEvent with _$ExerciseEvent {
  const factory ExerciseEvent.loadExercise({
    required Exercise exercise,
  }) = _LoadExercise;

  const factory ExerciseEvent.closeExercise() = _CloseExercise;

  const factory ExerciseEvent.loadSession({
    required Session session,
  }) = _LoadSession;

  const factory ExerciseEvent.addData({
    required String text,
  }) = _AddData;

  const factory ExerciseEvent.updateData() = _UpdateData;

  const factory ExerciseEvent.deleteData() = _DeleteData;
}
