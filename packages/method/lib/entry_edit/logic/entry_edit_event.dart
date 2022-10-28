part of 'entry_edit_bloc.dart';

@freezed
class EntryEditEvent implements EntryEditEventBase {
  const EntryEditEvent._();

  @With<EntryEditBase_StartTask>()
  const factory EntryEditEvent.startTask({
    required final String taskId,
  }) = _StartTask;

  @With<EntryEditBase_StartEntry>()
  const factory EntryEditEvent.startEntry({
    required final String entryId,
  }) = _StartEntry;
}
