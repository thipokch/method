part of 'session_edit_bloc.dart';

@freezed
class SessionEditState with _$SessionEditState {
  const SessionEditState._();

  const factory SessionEditState.initial() = _Initial;
  const factory SessionEditState.exerciseStarted({
    required final Exercise exercise,
  }) = _ExerciseStarted;
  const factory SessionEditState.sessionStarted({
    required final Session session,
  }) = _SessionStarted;
  const factory SessionEditState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}

extension Property on SessionEditState {
  Exercise? get exercise => mapOrNull(
        exerciseStarted: (_) => _.exercise,
        sessionStarted: (_) => _.session.template,
      );

  Session? get session => mapOrNull(
        sessionStarted: (_) => _.session,
      );
}
