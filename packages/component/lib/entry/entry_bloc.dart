import 'package:core/model/entry.dart';
import 'package:core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

part 'entry_event.dart';
part 'entry_state.dart';
part 'entry_bloc.freezed.dart';

class EntryBloc extends Bloc<EntryEvent, EntryState> {
  final Repository repo;
  
  EntryBloc({
    required this.repo,
    required Task task,
  }) : super(_TaskLoaded(task: task)) {
    on<_LoadTask>(_onLoadTask);
    on<_CloseTask>(_onCloseTask);
    on<_LoadEntry>(_onLoadEntry);
    on<_AddData>(_onAddData);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  void _onLoadTask(_LoadTask event, Emitter<EntryState> emit) {
    emit(EntryState.taskLoaded(task: event.task));
  }

  void _onCloseTask(_CloseTask event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) => emit(
          EntryState.taskLoaded(
            task: task,
          ),
        ),
        taskLoaded: (task) => emit(
          EntryState.taskLoaded(
            task: task,
          ),
        ),
        orElse: () => null,
      );

  void _onLoadEntry(_LoadEntry event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        taskLoaded: (task) => emit(
          EntryState.entryLoaded(
            task: task,
            entry: event.entry,
          ),
        ),
        orElse: () => null,
      );

  void _onAddData(_AddData event, Emitter<EntryState> emit) => state.maybeWhen(
        entryLoaded: (task, entry) => emit(
          EntryState.entryLoaded(
            task: task,
            entry: entry.copyWith(
              id: event.text,
            ),
          ),
        ),
        orElse: () => throw UnimplementedError(),
      );

  void _onUpdateData(_UpdateData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) => null,
        orElse: () => throw UnimplementedError(),
      );

  void _onDeleteData(_DeleteData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) => null,
        orElse: () => throw UnimplementedError(),
      );
}
