part of 'entry_bloc.dart';

@freezed
class EntryState with _$EntryState {
  // const factory TaskState.initial() = _Initial;

  const factory EntryState.taskLoaded({
    required Task task,
  }) = _TaskLoaded;

  const factory EntryState.entryLoaded({
    required Task task,
    required Entry entry,
  }) = _EntryLoaded;
}
