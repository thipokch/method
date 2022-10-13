import 'package:flutter/widgets.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

import '../util/component_provider.dart';

part 'entry_event.dart';
part 'entry_state.dart';
part 'entry_bloc.freezed.dart';

class EntryBloc extends Bloc<EntryEvent, EntryState> {
  final Repository repo;

  EntryBloc({
    required this.repo,
    required Task task,
    Entry? entry,
  }) : super(_EntryLoaded(
          task: task,
          entry: entry ??
              Entry.create(
                template: task,
                hierarchyPath: "${task.hierarchyPath}/${task.id}",
                id: DateTime.now().millisecondsSinceEpoch.toString(),
              ),
        )) {
    on<_LoadTask>(_onLoadTask);
    on<_CloseTask>(_onCloseTask);
    on<_LoadEntry>(_onLoadEntry);
    on<_AddData>(_onAddData);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
    on<_ClearData>(_onClearData);
  }

  static Widget provide({
    required Task task,
    Entry? entry,
    void Function(EntryBloc bloc)? onCreate,
    required Widget child,
  }) =>
      ComponentProvider(
        create: (_) => EntryBloc(
          repo: _.read<Repository>(),
          task: task,
          entry: entry,
        ),
        onCreate: onCreate,
        child: child,
      );

  void _onLoadTask(_LoadTask event, Emitter<EntryState> emit) =>
      emit(EntryState.taskLoaded(task: event.task));

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
              task.definitions.indexWhere((e) => event.definition.id == e.id);

          final updated = index >= 0
              ? entry.copyWith(
                  definitions: entry.definitions.toList()
                    ..setAll(index, [event.definition]),
                  updatedAt: DateTime.now(),
                  commitedAt: entry.commitedAt ?? DateTime.now(),
                )
              : entry;

          emit(EntryState.entryLoaded(
            task: task,
            entry: updated,
          ));

          return repo.entries.put(updated);
        },
        orElse: () => throw UnimplementedError(state.toString()),
      );

  void _onAddData(_AddData event, Emitter<EntryState> emit) => state.maybeWhen(
        entryLoaded: (task, entry) {
          final index =
              task.definitions.indexWhere((e) => event.definition.id == e.id);

          final updated = index >= 0
              ? entry.copyWith(
                  definitions: entry.definitions.toList()
                    ..add(event.definition),
                  updatedAt: DateTime.now(),
                  commitedAt: entry.commitedAt ?? DateTime.now(),
                )
              : entry;

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
          final index =
              task.definitions.indexWhere((e) => event.definition.id == e.id);

          // doesn't use RemoveAt to maintain order
          final updated = index >= 0
              ? entry.copyWith(
                  definitions: entry.definitions.toList()
                    ..setAll(index, [null]),
                )
              : entry;

          emit(EntryState.entryLoaded(
            task: task,
            entry: updated,
          ));

          return repo.entries.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );

  void _onClearData(_ClearData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) {
          final updated = entry.copyWith(
            definitions: List.filled(task.definitions.length, null),
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
