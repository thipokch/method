part of 'entry_edit_bloc.dart';

@freezed
class EntryEditState with _$EntryEditState {
  const EntryEditState._();

  const factory EntryEditState.intial() = _Initial;

  const factory EntryEditState.started({
    required final Entry entry,
  }) = _Started;

  const factory EntryEditState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  Entry? get entry => mapOrNull(
        started: (_) => _.entry,
      );

  Task? get task => mapOrNull(
        started: (_) => _.entry.template,
      );

  MapEntry<Task, Entry>? get pair => mapOrNull(
        started: (_) => MapEntry(_.entry.template, _.entry),
      );
}
