import 'package:core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBlock extends Bloc<TaskEvent, TaskState> {
  TaskBlock() : super(const _Initial()) {
    on<_LoadTask>(_onLoadTask);
    on<_CloseTask>(_onCloseTask);
    on<_LoadEntry>(_onLoadEntry);
    on<_AddData>(_onAddData);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  void _onLoadTask(_LoadTask event, Emitter<TaskState> emit) {
    emit(TaskState.taskLoaded(task: event.task));
    // emit(_TaskLoaded(data: event.data, task: ));
  }

  void _onCloseTask(_CloseTask event, Emitter<TaskState> emit) {
    throw UnimplementedError();
  }

  void _onLoadEntry(_LoadEntry event, Emitter<TaskState> emit) => state.when(
        taskLoaded: (task) => emit(TaskState.entryLoaded(task: task)),
        entryLoaded: (task) => emit(TaskState.entryLoaded(task: task)),
        entryUpdated: (task) => emit(TaskState.entryLoaded(task: task)),
        initial: () {
          throw UnimplementedError();
        },
      );

  void _onAddData(_AddData event, Emitter<TaskState> emit) => state.when(
        taskLoaded: (task) => emit(TaskState.entryUpdated(task: task)),
        entryLoaded: (task) => emit(TaskState.entryUpdated(task: task)),
        entryUpdated: (task) => emit(TaskState.entryUpdated(task: task)),
        initial: () {
          throw UnimplementedError();
        },
      );

  void _onUpdateData(_UpdateData event, Emitter<TaskState> emit) => state.when(
        taskLoaded: (task) => emit(TaskState.entryUpdated(task: task)),
        entryLoaded: (task) => emit(TaskState.entryUpdated(task: task)),
        entryUpdated: (task) => emit(TaskState.entryUpdated(task: task)),
        initial: () {
          throw UnimplementedError();
        },
      );

  void _onDeleteData(_DeleteData event, Emitter<TaskState> emit) => state.when(
        taskLoaded: (task) => emit(TaskState.entryUpdated(task: task)),
        entryLoaded: (task) => emit(TaskState.entryUpdated(task: task)),
        entryUpdated: (task) => emit(TaskState.entryUpdated(task: task)),
        initial: () {
          throw UnimplementedError();
        },
      );
}
