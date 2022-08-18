part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.loadTask({
    required String data,
  }) = _LoadTask;

  const factory TaskEvent.closeTask({
    required String data,
  }) = _CloseTask;

  const factory TaskEvent.loadEntry({
    required String data,
  }) = _LoadEntry;

  const factory TaskEvent.addData({
    required String data,
  }) = _AddData;

  const factory TaskEvent.updateData({
    required String data,
  }) = _UpdateData;

  const factory TaskEvent.deleteData({
    required String data,
  }) = _DeleteData;
}
