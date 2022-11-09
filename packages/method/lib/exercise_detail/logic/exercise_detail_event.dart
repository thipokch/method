part of 'exercise_detail_bloc.dart';

@freezed
class ExerciseDetailEvent with _$ExerciseDetailEvent {
  const ExerciseDetailEvent._();

  const factory ExerciseDetailEvent.start() = _Start;
  const factory ExerciseDetailEvent.destroy() = _Destroy;

  const factory ExerciseDetailEvent.startSession() = _StartSession;
}
