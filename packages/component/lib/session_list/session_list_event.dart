part of 'session_list_bloc.dart';

@freezed
class SessionListEvent with _$SessionListEvent {
  const factory SessionListEvent.load() = _Load;

  const factory SessionListEvent.update({
    required List<Session> sessions,
  }) = _Update;
}
