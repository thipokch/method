part of 'entry_bloc.dart';

@freezed
class EntryState with _$EntryState {
  const EntryState._();

  const factory EntryState.initial() = _Initial;
  const factory EntryState.created() = _Created;
  const factory EntryState.started() = _Started;
  const factory EntryState.resumed() = _Resumed;
  const factory EntryState.destroyed() = _Destroyed;
  const factory EntryState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
