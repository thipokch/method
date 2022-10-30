part of 'entry_edit_diverge_bloc.dart';

@freezed
class EntryEditDivergeState
    with _$EntryEditDivergeState
    implements EntryEditStateBase {
  const EntryEditDivergeState._();

  @With<EntryEditBase_Initial>()
  const factory EntryEditDivergeState.initial() = _Initial;

  @With<EntryEditBase_Started>()
  const factory EntryEditDivergeState.started({
    required final BuildEntryDefinition definitions,
  }) = _Started;

  @With<EntryEditBase_Errored>()
  const factory EntryEditDivergeState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;

  @override
  BuildEntryDefinition? get definitions => mapOrNull(
        started: (_) => _.definitions,
      );
}
