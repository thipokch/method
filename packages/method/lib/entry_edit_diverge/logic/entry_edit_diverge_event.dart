part of 'entry_edit_diverge_bloc.dart';

@freezed
class EntryEditDivergeEvent
    with _$EntryEditDivergeEvent
    implements EntryEditEventBase {
  const EntryEditDivergeEvent._();

  @With<EntryEditBase_StartTask>()
  const factory EntryEditDivergeEvent.startTask({
    required final String taskId,
  }) = _StartTask;

  @With<EntryEditBase_StartEntry>()
  const factory EntryEditDivergeEvent.startEntry({
    required final String entryId,
  }) = _StartEntry;

  const factory EntryEditDivergeEvent.stop() = _Stop;

  const factory EntryEditDivergeEvent.selectNote({
    required final int index,
  }) = _SelectNote;

  const factory EntryEditDivergeEvent.updateNote({
    required final String text,
  }) = _UpdateNote;
}
