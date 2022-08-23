part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.loadTask({
    required Task task,
  }) = _LoadTask;

  const factory TaskEvent.closeTask() = _CloseTask;

  const factory TaskEvent.loadEntry({
    required Entry entry,
  }) = _LoadEntry;

  const factory TaskEvent.addData({
    required String text,
  }) = _AddData;

  const factory TaskEvent.updateData() = _UpdateData;

  const factory TaskEvent.deleteData() = _DeleteData;
}
