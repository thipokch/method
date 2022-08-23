import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final Task task;

  TaskBloc({
    required this.task,
  }) : super(_TaskLoaded(task: task)) {
    on<_LoadTask>(_onLoadTask);
    on<_CloseTask>(_onCloseTask);
    on<_LoadEntry>(_onLoadEntry);
    on<_AddData>(_onAddData);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  void _onLoadTask(_LoadTask event, Emitter<TaskState> emit) {
    emit(TaskState.taskLoaded(task: event.task));
  }

  void _onCloseTask(_CloseTask event, Emitter<TaskState> emit) {
    throw UnimplementedError();
  }

  void _onLoadEntry(_LoadEntry event, Emitter<TaskState> emit) =>
      state.maybeWhen(
        taskLoaded: (task) => emit(
          TaskState.entryLoaded(
            task: task,
            entry: event.entry,
          ),
        ),
        orElse: () {},
      );

  void _onAddData(_AddData event, Emitter<TaskState> emit) => state.maybeWhen(
        entryLoaded: (task, entry) => emit(
          TaskState.entryLoaded(
            task: task,
            entry: entry.copyWith(
              id: event.text,
            ),
          ),
        ),
        orElse: () => throw UnimplementedError(),
      );

  void _onUpdateData(_UpdateData event, Emitter<TaskState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) {},
        orElse: () => throw UnimplementedError(),
      );

  void _onDeleteData(_DeleteData event, Emitter<TaskState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) {},
        orElse: () => throw UnimplementedError(),
      );
}
