part of 'exercise_detail_bloc.dart';

@freezed
class ExerciseDetailEvent {
  const ExerciseDetailEvent._();

  const factory ExerciseDetailEvent.create() = _Create;
  const factory ExerciseDetailEvent.start() = _Start;
  const factory ExerciseDetailEvent.resume() = _Resume;
  const factory ExerciseDetailEvent.pause() = _Pause;
  const factory ExerciseDetailEvent.stop() = _Stop;
  const factory ExerciseDetailEvent.destroy() = _Destroy;
}
