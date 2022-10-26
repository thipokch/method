part of 'session_edit_bloc.dart';

@freezed
class SessionEditEvent with _$SessionEditEvent {
  const SessionEditEvent._();

  const factory SessionEditEvent.startExercise({
    required final String exerciseId,
  }) = _StartExercise;
  const factory SessionEditEvent.startSession({
    required final String sessionId,
    final int? initialIndex,
  }) = _StartSession;
  const factory SessionEditEvent.stop() = _Stop;
}
