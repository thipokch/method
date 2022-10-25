part of 'session_detail_bloc.dart';

@freezed
class SessionDetailEvent with _$SessionDetailEvent {
  const SessionDetailEvent._();

  const factory SessionDetailEvent.start() = _Start;
  const factory SessionDetailEvent.destroy() = _Destroy;

  const factory SessionDetailEvent.editSession() = _EditSession;
}
