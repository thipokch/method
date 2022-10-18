part of 'session_bloc.dart';

@freezed
class SessionEvent with _$SessionEvent {
  const factory SessionEvent.loadExercise({
    required Exercise exercise,
  }) = _LoadExercise;

  const factory SessionEvent.closeExercise() = _CloseExercise;

  const factory SessionEvent.loadSession({
    Session? session,
  }) = _LoadSession;

  const factory SessionEvent.updateSession({
    required Session session,
  }) = _UpdateSession;

  const factory SessionEvent.updateData({
    required Entry entry,
  }) = _UpdateData;

  const factory SessionEvent.deleteData({
    required Entry entry,
  }) = _DeleteData;
}
