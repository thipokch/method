part of 'session_bloc.dart';

@freezed
class SessionEvent with _$SessionEvent {
  const factory SessionEvent.loadExercise({
    required Exercise exercise,
  }) = _LoadExercise;

  const factory SessionEvent.closeExercise() = _CloseExercise;

  const factory SessionEvent.loadSession({
    required Session session,
  }) = _LoadSession;

  const factory SessionEvent.addData({
    required Entry entry,
  }) = _AddData;

  const factory SessionEvent.updateData({
    required Entry entry,
  }) = _UpdateData;

  const factory SessionEvent.deleteData({
    required Entry entry,
  }) = _DeleteData;
}
