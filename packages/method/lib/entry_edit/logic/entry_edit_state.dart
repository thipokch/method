part of 'entry_edit_bloc.dart';

@freezed
class EntryEditState with _$EntryEditState {
  const EntryEditState._();

  const factory EntryEditState.initial() = _Initial;
  const factory EntryEditState.created() = _Created;
  const factory EntryEditState.started() = _Started;
  const factory EntryEditState.resumed() = _Resumed;
  const factory EntryEditState.destroyed() = _Destroyed;
  const factory EntryEditState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
