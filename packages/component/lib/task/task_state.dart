part of 'task_bloc.dart';

@freezed
class TaskState with _$TaskState {
  const factory TaskState.initial({
    @Default("Initial") String data,
  }) = _Initial;

  const factory TaskState.taskLoaded({
    @Default("Task Loaded") String data,
    }) = _TaskLoaded;

  const factory TaskState.entryLoaded({
    @Default("Entry Loaded") String data,
  }) = _EntryLoaded;

  const factory TaskState.entryUpdated({
    @Default("Entry Updated") String data,
  }) = _EntryUpdated;
}
