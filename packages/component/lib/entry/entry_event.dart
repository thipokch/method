part of 'entry_bloc.dart';

@freezed
class EntryEvent with _$EntryEvent {
  const factory EntryEvent.loadTask({
    required Task task,
  }) = _LoadTask;

  const factory EntryEvent.closeTask() = _CloseTask;

  const factory EntryEvent.loadEntry({
    Entry? entry,
  }) = _LoadEntry;

  const factory EntryEvent.updateData({
    required EntryDefinition definition,
  }) = _UpdateData;

  const factory EntryEvent.deleteData({
    required EntryDefinition definition,
  }) = _DeleteData;

  const factory EntryEvent.clearData() = _ClearData;
}
