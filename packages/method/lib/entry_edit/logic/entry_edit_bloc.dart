import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:method_repo/repository.dart';

part 'entry_edit_event.dart';
part 'entry_edit_state.dart';
part 'entry_edit_bloc.freezed.dart';

typedef EntryEditBuilder = BlocBuilder<EntryEditBloc, EntryEditState>;
typedef EntryEditListener = BlocListener<EntryEditBloc, EntryEditState>;
typedef EntryEditSelector<T> = BlocSelector<EntryEditBloc, EntryEditState, T>;
typedef EntryEditConsumer = BlocConsumer<EntryEditBloc, EntryEditState>;

/*
 *
 *     [INITIAL] ──┐
 *                 ↓
 *         ┌── [CREATED] ──┐
 *         ↓       ↑       ↓
 *    [DESTROYED]  └── [STARTED] ──┐
 *                         ↑       ↓
 *                         └── [RESUMED]
 * 
 */

class EntryEditBloc extends Bloc<EntryEditEvent, EntryEditState> {
  EntryEditBloc({
    required this.repository,
    this.analytics,
  }) : super(const _Initial()) {
    on<_StartTask>(_onStartTask);
    on<_StartEntry>(_onStartEntry);
  }

  final Repository repository;
  final FirebaseAnalytics? analytics;

  void _onStartTask(
    _StartTask event,
    Emitter<EntryEditState> emit,
  ) async {
    final task = await repository.tasks.get(event.taskId);

    if (task == null) {
      return addError(
        ArgumentError(
          "Given id ${event.taskId} not found in exercise collection.",
        ),
        StackTrace.current,
      );
    }

    final newEntry = Entry.from(template: task);

    emit(_Started(entry: newEntry));

    // TODO: fix - onData will error with forEach.
  }

  void _onStartEntry(
    _StartEntry event,
    Emitter<EntryEditState> emit,
  ) async =>
      await emit.forEach(
        repository.entries.stream(event.entryId),
        onData: _onData,
        onError: _onError,
      );

// STREAM EVENTS

  EntryEditState _onData(Entry? entry) {
    log("$runtimeType - data");

    return entry != null
        ? _Started(entry: entry)
        : _Errored(error: StateError(""), stackTrace: StackTrace.current);
  }

  _Errored _onError(Object error, StackTrace stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    onError(error, stackTrace);

    return _Errored(error: error, stackTrace: stackTrace);
  }

  // BLOC EVENTS

  @override
  void onEvent(event) {
    // TODO: implement analytics here
    log("$runtimeType - error : $event");
    super.onEvent(event);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
