import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';
import 'package:method_repo/repository.dart';

part 'entry_edit_event_base.dart';
part 'entry_edit_state_base.dart';

abstract class EntryEditBlocBase<E extends EntryEditEventBase,
    S extends EntryEditStateBase> extends Bloc<E, S> {
  EntryEditBlocBase(
    super.initialState, {
    required this.repository,
    required this.analytics,
  });

  final Repository repository;
  final FirebaseAnalytics? analytics;

  void onStartTask(
    EntryEditBase_StartTask event,
    Emitter<S> emit,
  ) =>
      emit.forEach<Entry?>(
        repository.tasks
            .get(event.taskId)
            .then((value) => value != null ? Entry.from(template: value) : null)
            .asStream(),
        onData: onStreamData,
        onError: onStreamError,
      );

  void onStartEntry(
    EntryEditBase_StartEntry event,
    Emitter<S> emit,
  ) =>
      emit.forEach<Entry?>(
        repository.entries.get(event.entryId).asStream(),
        onData: onStreamData,
        onError: onStreamError,
      );

  S onStreamData(Entry? entry);
  S onStreamError(Object error, StackTrace stackTrace);
}
