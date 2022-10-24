part of 'session_list_bloc.dart';

@freezed
class SessionListEvent with _$SessionListEvent {
  const SessionListEvent._();

  const factory SessionListEvent.start() = _Start;
  const factory SessionListEvent.selectSession({
    required Session session,
  }) = _SelectSession;
  const factory SessionListEvent.deleteSession({
    required Session session,
  }) = _DeleteSession;
  const factory SessionListEvent.destroy() = _Destroy;
}
