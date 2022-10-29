part of 'entry_edit_converge_bloc.dart';

@freezed
class EntryEditConvergeState
    with _$EntryEditConvergeState
    implements EntryEditStateBase {
  const EntryEditConvergeState._();

  @With<EntryEditBase_Initial>()
  const factory EntryEditConvergeState.initial() = _Initial;

  @With<EntryEditBase_Started>()
  const factory EntryEditConvergeState.started({
    required final Entry entry,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditConvergeState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  @override
  Entry? get entry => mapOrNull(
        started: (_) => _.entry,
      );

  @override
  Task? get task => mapOrNull(
        started: (_) => _.entry.template,
      );
}

extension Converge on EntryEditConvergeState {
  EntryDefinitionPair? get note => entry?.builtDefinition.map.entries.first;

  EntryDefinitionList? get labels =>
      entry?.builtDefinition.map.entries.skip(1).toBuiltList();
}
