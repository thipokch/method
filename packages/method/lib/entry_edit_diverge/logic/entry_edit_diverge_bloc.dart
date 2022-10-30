import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';

part 'entry_edit_diverge_event.dart';
part 'entry_edit_diverge_state.dart';
part 'entry_edit_diverge_bloc.freezed.dart';

typedef EntryEditDivergeBuilder
    = BlocBuilder<EntryEditDivergeBloc, EntryEditDivergeState>;
typedef EntryEditDivergeListener
    = BlocListener<EntryEditDivergeBloc, EntryEditDivergeState>;
typedef EntryEditDivergeSelector<T>
    = BlocSelector<EntryEditDivergeBloc, EntryEditDivergeState, T>;
typedef EntryEditDivergeConsumer
    = BlocConsumer<EntryEditDivergeBloc, EntryEditDivergeState>;

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

class EntryEditDivergeBloc
    extends EntryEditBlocBase<EntryEditDivergeEvent, EntryEditDivergeState> {
  EntryEditDivergeBloc({
    required super.repository,
    super.analytics,
  }) : super(const _Initial()) {
    on<_StartTask>(onStartTask);
    on<_StartEntry>(onStartEntry);
    on<_SelectNote>(_onSelectNote);
  }

  // BLOC EVENTS

  void _onSelectNote(
    _SelectNote event,
    Emitter<EntryEditDivergeState> emit,
  ) =>
      state.maybeWhen(
        started: (entry) {
          final builtDefinition = entry.builtDefinition;
          final taskDefinition = builtDefinition.commands[event.index];
          final entryDefinition = builtDefinition.data[event.index].orNull;

          final updated = entryDefinition == null
              ? entry.copyWith(
                  definitions: builtDefinition
                      .mutateDataFor(
                        taskDefinition,
                        EntryDefinition.from(template: taskDefinition),
                      )
                      .asEntryDefinitionList(),
                )
              : entry.copyWith(
                  definitions: builtDefinition
                      .clearDataFor(taskDefinition)
                      .asEntryDefinitionList(),
                );

          return emit(_Started(entry: updated));
        },
        orElse: () => throw StateError("Invalid state to SelectLabel"),
      );

  @override
  EntryEditDivergeState onStreamData(Entry? entry) =>
      entry != null ? _Started(entry: entry) : const _Initial();

  @override
  EntryEditDivergeState onStreamError(Object error, StackTrace stackTrace) =>
      _Errored(error: error, stackTrace: stackTrace);
}
