import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';
import 'package:method_data/method_data.dart';

part 'entry_edit_event.dart';
part 'entry_edit_state.dart';
part 'entry_edit_bloc.freezed.dart';

typedef EntryEditBuilder = BlocBuilder<EntryEditBloc, EntryEditState>;
typedef EntryEditListener = BlocListener<EntryEditBloc, EntryEditState>;
typedef EntryEditSelector<T> = BlocSelector<EntryEditBloc, EntryEditState, T>;
typedef EntryEditConsumer = BlocConsumer<EntryEditBloc, EntryEditState>;

class EntryEditBloc extends Bloc<EntryEditEvent, EntryEditState> {
  EntryEditBloc({
    required this.repository,
    this.analytics,
    // ignore: no-empty-block
  }) : super(const EntryEditState.intial()) {
    // on<_StartTask>(_onStartTask);
    // on<_StartEntry>(_onStartEntry);
    // on<_UpdateDefinition>(_onUpdateDefinition);
    // add(_StartTask(taskId: taskId));
  }

  final Repository repository;
  final FirebaseAnalytics? analytics;

  // void _onUpdateDefinition(
  //   _UpdateDefinition event,
  //   Emitter<EntryEditState> emit,
  // ) =>
  //     state.mapOrNull(
  //       started: (value) => repository.entries.put(
  //         value.entry
  //             .copyWith(definitions: event.definitions.expandedData.toList()),
  //       ),
  //     );

  // void _onStartTask(
  //   _StartTask event,
  //   Emitter<EntryEditState> emit,
  // ) async {
  //   final task = await repository.tasks.get(event.taskId);
  //   final newEntry = task != null ? Entry.from(template: task) : null;

  //   // Emit newly created entry for use, since stream will emit null.
  //   emit(onStreamData(newEntry));

  //   if (newEntry == null) return;

  //   await emit.forEach<Entry?>(
  //     repository.entries.stream(
  //       newEntry.id,
  //       fireImmediately: false,
  //     ),
  //     onData: onStreamData,
  //     onError: onStreamError,
  //   );
  // }

  // void _onStartEntry(
  //   _StartEntry event,
  //   Emitter<EntryEditState> emit,
  // ) =>
  //     emit.forEach<Entry?>(
  //       repository.entries.stream(event.entryId),
  //       onData: onStreamData,
  //       onError: onStreamError,
  //     );

  EntryEditState onStreamData(Entry? entry) =>
      entry != null ? _Started(entry: entry) : const _Initial();

  EntryEditState onStreamError(Object error, StackTrace stackTrace) =>
      _Errored(error: error, stackTrace: stackTrace);
}
