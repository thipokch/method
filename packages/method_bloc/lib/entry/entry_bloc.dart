import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

// export 'package:flutter_bloc/flutter_bloc.dart' show Bloc;

part 'entry_event.dart';
part 'entry_state.dart';
part 'entry_bloc.freezed.dart';

class EntryBloc extends Bloc<EntryEvent, EntryState> {
  final Repository repo;
  StreamSubscription<Entry?>? subscription;

  EntryBloc._({
    required this.repo,
    required Task task,
  }) : super(_TaskLoaded(task: task)) {
    on<_LoadTask>(_onLoadTask);
    on<_CloseTask>(_onCloseTask);
    on<_LoadEntry>(_onLoadEntry);
    on<_UpdateEntry>(_onUpdateEntry);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
    on<_ClearData>(_onClearData);
  }

  static provider({
    required Task task,
    Entry? entry,
    BlocWidgetListener<EntryState>? listener,
    required Widget child,
  }) =>
      BlocProvider(
        create: (_) => EntryBloc._(
          repo: _.read(),
          task: task,
        )..add(_LoadEntry(entry: entry)),
        child: listener != null
            ? BlocListener<EntryBloc, EntryState>(
                listener: listener,
                child: child,
              )
            : child,
      );

  static builder({
    required BlocWidgetBuilder<EntryState> builder,
  }) =>
      BlocBuilder<EntryBloc, EntryState>(builder: builder);

  void _onLoadTask(_LoadTask event, Emitter<EntryState> emit) =>
      emit(_TaskLoaded(task: event.task));

  void _onCloseTask(_CloseTask event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        orElse: () => throw UnimplementedError(),
      );

  void _onLoadEntry(_LoadEntry event, Emitter<EntryState> emit) {
    final entry = event.entry ?? Entry.from(template: state.task);

    subscription ??= repo.entries.stream(entry.id).listen(
          (event) => add(_UpdateEntry(entry: event ?? entry)),
        );
  }

  void _onUpdateEntry(_UpdateEntry event, Emitter<EntryState> emit) =>
      emit(_EntryLoaded(
        task: state.task,
        entry: event.entry,
      ));

  void _onUpdateData(_UpdateData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) {
          final updated = entry.copyWith(
            definitions: entry.addDefinitions([event.definition]),
          );

          emit(_EntryLoaded(task: task, entry: updated));

          return repo.entries.put(updated);
        },
        orElse: () => throw UnimplementedError(state.toString()),
      );

  void _onDeleteData(_DeleteData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) => repo.entries.put(
          entry.copyWith(
            definitions: entry.removeDefinitions([event.definition]),
          ),
        ),
        orElse: () => throw UnimplementedError(state.toString()),
      );

  void _onClearData(_ClearData event, Emitter<EntryState> emit) =>
      state.maybeWhen(
        entryLoaded: (task, entry) {
          final updated = entry.copyWith(definitions: []);

          emit(_EntryLoaded(task: task, entry: updated));

          return repo.entries.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );

  @override
  Future<void> close() {
    subscription?.cancel();

    return super.close();
  }
}
