part of 'entry_edit_bloc.dart';

@freezed
class EntryEditEvent with _$EntryEditEvent {
  const EntryEditEvent._();

  const factory EntryEditEvent.startTask({
    required final String taskId,
  }) = _StartTask;
  const factory EntryEditEvent.startEntry({
    required final String entryId,
  }) = _StartEntry;
  const factory EntryEditEvent.stop() = _Stop;
}
