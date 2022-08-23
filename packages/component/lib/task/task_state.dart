part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial() = _Initial;

  const factory TaskState.taskLoaded({
    required Task task,
  }) = _TaskLoaded;

  const factory TaskState.entryLoaded({
    required Task task,
    required Entry entry,
  }) = _EntryLoaded;
}
