part of 'session_list_bloc.dart';

@freezed
class SessionListState with _$SessionListState {
  const SessionListState._();

  const factory SessionListState.initial() = _Initial;
  const factory SessionListState.started({
    required final List<Session> sessions,
  }) = _Started;
  const factory SessionListState.destroyed() = _Destroyed;
  const factory SessionListState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  @override
  String toString() => maybeMap(
        started: (_) => "Started: ${_.sessions.map((e) => e.id)}",
        orElse: () => super.toString(),
      );
}
