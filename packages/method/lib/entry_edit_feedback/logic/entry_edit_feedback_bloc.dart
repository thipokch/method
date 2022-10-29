import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task.dart';

part 'entry_edit_feedback_event.dart';
part 'entry_edit_feedback_state.dart';
part 'entry_edit_feedback_bloc.freezed.dart';

typedef EntryEditFeedbackBuilder
    = BlocBuilder<EntryEditFeedbackBloc, EntryEditFeedbackState>;
typedef EntryEditFeedbackListener
    = BlocListener<EntryEditFeedbackBloc, EntryEditFeedbackState>;
typedef EntryEditFeedbackSelector<T>
    = BlocSelector<EntryEditFeedbackBloc, EntryEditFeedbackState, T>;
typedef EntryEditFeedbackConsumer
    = BlocConsumer<EntryEditFeedbackBloc, EntryEditFeedbackState>;

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

class EntryEditFeedbackBloc
    extends EntryEditBlocBase<EntryEditFeedbackEvent, EntryEditFeedbackState> {
  EntryEditFeedbackBloc({
    required super.repository,
    super.analytics,
  }) : super(const _Initial()) {
    on<_StartTask>(onStartTask);
    on<_StartEntry>(onStartEntry);
    on<_SelectRating>(_onSelectRating);
  }

  // BLOC EVENTS

  void _onSelectRating(
    _SelectRating event,
    Emitter<EntryEditFeedbackState> emit,
  ) =>
      state.maybeWhen(
        started: (entry) {
          final builtDefinition = entry.builtDefinition;
          final taskDefinition = builtDefinition.commands[event.index];
          final entryDefinition = builtDefinition.data[event.index].orNull;

          final updated = entryDefinition == null
              ? entry.copyWith(
                  definitions: builtDefinition
                      .clearAllData() // TODO: Add test for this toggle behavior
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
  EntryEditFeedbackState onStreamData(Entry? entry) =>
      entry != null ? _Started(entry: entry) : const _Initial();

  @override
  EntryEditFeedbackState onStreamError(Object error, StackTrace stackTrace) =>
      _Errored(error: error, stackTrace: stackTrace);
}
