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
    emit(_TaskLoaded(data: event.data));
  }

  void _onCloseTask(_CloseTask event, Emitter<TaskState> emit) {
    throw UnimplementedError();
  }

  void _onLoadEntry(_LoadEntry event, Emitter<TaskState> emit) {
    emit(_EntryLoaded(data: event.data));
  }

  void _onAddData(_AddData event, Emitter<TaskState> emit) {
    emit(_EntryUpdated(data: event.data));
  }

  void _onUpdateData(_UpdateData event, Emitter<TaskState> emit) {
    emit(_EntryUpdated(data: event.data));
  }

  void _onDeleteData(_DeleteData event, Emitter<TaskState> emit) {
    emit(_EntryUpdated(data: event.data));
  }
}
