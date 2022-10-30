part of 'entry_edit_diverge_bloc.dart';

@freezed
class EntryEditDivergeEvent
    with _$EntryEditDivergeEvent
    implements EntryEditEventBase {
  const EntryEditDivergeEvent._();

  @With<EntryEditBase_Start>()
  const factory EntryEditDivergeEvent.start({
    required final BuildEntryDefinition definitions,
  }) = _Start;

  const factory EntryEditDivergeEvent.stop() = _Stop;

  const factory EntryEditDivergeEvent.selectNote({
    required final int index,
  }) = _SelectNote;

  const factory EntryEditDivergeEvent.updateNote({
    required final String text,
  }) = _UpdateNote;
}
