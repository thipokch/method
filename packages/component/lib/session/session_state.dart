part of 'session_bloc.dart';

@freezed
class SessionState with _$SessionState {
  const factory SessionState.exerciseLoaded({
    required Exercise exercise,
  }) = _ExerciseLoaded;

  const factory SessionState.sessionLoaded({
    required Exercise exercise,
    required Session session,
  }) = _SessionLoaded;
}
