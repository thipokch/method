part of 'session_edit_bloc.dart';

@freezed
class SessionEditState with _$SessionEditState {
  const SessionEditState._();

  const factory SessionEditState.initial() = _Initial;
  const factory SessionEditState.started({
    required final Session session,
  }) = _Started;
  const factory SessionEditState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}

extension Property on SessionEditState {
  // Exercise? get exercise => mapOrNull(
  //       started: (_) => _.session.,
  //     );

  Session? get session => mapOrNull(
        started: (_) => _.session,
      );
}
