part of 'entry_bloc.dart';

@freezed
class EntryEvent with _$EntryEvent {
  const factory EntryEvent.loadTask({
    required Task task,
  }) = _LoadTask;

  const factory EntryEvent.closeTask() = _CloseTask;

  const factory EntryEvent.loadEntry({
    required Entry entry,
  }) = _LoadEntry;

  const factory EntryEvent.addData({
    required String text,
  }) = _AddData;

  const factory EntryEvent.updateData() = _UpdateData;

  const factory EntryEvent.deleteData() = _DeleteData;
}
