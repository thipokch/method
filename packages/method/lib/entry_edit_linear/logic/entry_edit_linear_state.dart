part of 'entry_edit_linear_bloc.dart';

@freezed
class EntryEditLinearState
    with _$EntryEditLinearState
    implements EntryEditStateBase {
  const EntryEditLinearState._();

  @With<EntryEditBase_Initial>()
  const factory EntryEditLinearState.initial() = _Initial;

  @With<EntryEditBase_Started<BuildMultiEntryDefinition>>()
  const factory EntryEditLinearState.started({
    required final BuildMultiEntryDefinition definitions,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditLinearState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  @override
  BuildMultiEntryDefinition? get definitions => mapOrNull(
        started: (_) => _.definitions,
      );
}

// extension Converge on EntryEditLinearState {
//   EntryDefinitionPair? get note => definitions?.map.entries.first;

//   EntryDefinitionList? get labels =>
//       definitions?.map.entries.skip(1).toBuiltList();
// }
