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
    required final BuildEntryDefinition definitions,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditConvergeState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  @override
  BuildEntryDefinition? get definitions => mapOrNull(
        started: (_) => _.definitions,
      );
}

extension Converge on EntryEditConvergeState {
  EntryDefinitionPair? get note => definitions?.map.entries.first;

  EntryDefinitionList? get labels =>
      definitions?.map.entries.skip(1).toBuiltList();
}
