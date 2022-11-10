part of 'session_detail_bloc.dart';

@freezed
class SessionDetailState with _$SessionDetailState {
  const SessionDetailState._();

  const factory SessionDetailState.initial() = _Initial;
  const factory SessionDetailState.started({
    required final Session session,
  }) = _Started;
  const factory SessionDetailState.destroyed() = _Destroyed;
  const factory SessionDetailState.errored({
    required final Object error,
    required final StackTrace? stackTrace,
  }) = _Errored;
}

extension StateDefinition on SessionDetailState {
  BuiltDefinition<Task, Entry>? get definitions => whenOrNull(
        started: (session) => session.builtDefinition,
      );

  Exercise? get exercise => whenOrNull(
        started: (session) => session.template,
      );
  Session? get session => whenOrNull(
        started: (session) => session,
      );
}
