part of 'session_list_bloc.dart';

@freezed
class SessionListState with _$SessionListState {
  const factory SessionListState.initial() = _Initial;

  const factory SessionListState.loaded({
    required List<Session> sessions,
  }) = _Loaded;
}
