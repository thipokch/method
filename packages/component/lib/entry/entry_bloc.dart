import 'package:core/model/entry.dart';
import 'package:core/model/entry_definition.dart';
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
        orElse: () => throw UnimplementedError(),
      );

  void _onLoadEntry(_LoadEntry event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        taskLoaded: (task) => emit(
          EntryState.entryLoaded(
            task: task,
            entry: event.entry ??
                Entry.create(
                  template: task,
                  hierarchyPath: "${task.hierarchyPath}/${task.id}",
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                ),
          ),
        ),
        orElse: () => throw UnimplementedError(),
      );

  void _onUpdateData(_UpdateData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) {
          final index =
              entry.definitions.indexWhere((e) => event.definition.id == e.id);

          final updated = index > 0
              ? entry.copyWith(
                  definitions: entry.definitions.toList()
                    ..setAll(index, [event.definition]),
                )
              : entry.copyWith(
                  definitions: entry.definitions.toList()
                    ..add(event.definition),
                );

          emit(EntryState.entryLoaded(
            task: task,
            entry: updated,
          ));

          return repo.entries.put(updated);
        },
        orElse: () => throw UnimplementedError(state.toString()),
      );

  void _onDeleteData(_DeleteData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) {
          final updated = entry.copyWith(
            definitions: entry.definitions.toList()
              ..removeWhere((e) => event.definition.id == e.id),
          );

          emit(EntryState.entryLoaded(
            task: task,
            entry: updated,
          ));

          return repo.entries.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );
}
