part of 'entry_edit_bloc.dart';

@freezed
class EntryEditState with _$EntryEditState {
  const EntryEditState._();

  const factory EntryEditState.initial() = _Initial;
  const factory EntryEditState.started({
    required final Entry entry,
  }) = _Started;
  const factory EntryEditState.resumed() = _Resumed;
  const factory EntryEditState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}

extension Property on EntryEditState {
  Entry? get entry => mapOrNull(
        started: (_) => _.entry,
      );

  Task? get task => mapOrNull(
        started: (_) => _.entry.template,
      );
}
