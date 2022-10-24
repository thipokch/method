part of 'session_detail_bloc.dart';

@freezed
class SessionDetailState with _$SessionDetailState {
  const SessionDetailState._();

  const factory SessionDetailState.initial() = _Initial;
  const factory SessionDetailState.created() = _Created;
  const factory SessionDetailState.started() = _Started;
  const factory SessionDetailState.resumed() = _Resumed;
  const factory SessionDetailState.destroyed() = _Destroyed;
  const factory SessionDetailState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
