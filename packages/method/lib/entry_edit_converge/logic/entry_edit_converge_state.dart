part of 'entry_edit_converge_bloc.dart';

@freezed
class EntryEditConvergeState with _$EntryEditConvergeState {
  const EntryEditConvergeState._();

  const factory EntryEditConvergeState.initial() = _Initial;
  const factory EntryEditConvergeState.started({
    required final Entry entry,
  }) = _Started;
  const factory EntryEditConvergeState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}

extension Converge on EntryEditState {
  Entry? get entry => mapOrNull(
        started: (_) => _.entry,
      );

  Task? get task => mapOrNull(
        started: (_) => _.entry.template,
      );

  Definition? get note => entry?.mappedDefinition.entries.first;
  DefinitionList? get labels =>
      entry?.mappedDefinition.entries.skip(1).toList();
}
