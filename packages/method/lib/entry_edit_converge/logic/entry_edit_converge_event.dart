part of 'entry_edit_converge_bloc.dart';

@freezed
class EntryEditConvergeEvent with _$EntryEditConvergeEvent {
  const EntryEditConvergeEvent._();

  const factory EntryEditConvergeEvent.startTask({
    required final String taskId,
  }) = _StartTask;
  const factory EntryEditConvergeEvent.startEntry({
    required final String entryId,
  }) = _StartEntry;

  const factory EntryEditConvergeEvent.stop() = _Stop;

  const factory EntryEditConvergeEvent.selectLabel({
    required final int index,
  }) = _SelectLabel;

  const factory EntryEditConvergeEvent.updateNote({
    required final String text,
  }) = _UpdateNote;
}
