import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

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

class EntryEditFeedbackBloc
    extends EntryEditBlocBase<EntryEditFeedbackEvent, EntryEditFeedbackState> {
  EntryEditFeedbackBloc({
    super.analytics,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_SelectRating>(_onSelectRating);
  }

  _onStart(_Start event, Emitter<EntryEditFeedbackState> emit) =>
      emit(_Started(definitions: event.definitions));

  // BLOC EVENTS

  void _onSelectRating(
    _SelectRating event,
    Emitter<EntryEditFeedbackState> emit,
  ) =>
      state.maybeWhen(
        started: (definitions) {
          final taskDefinition = definitions.commands[event.index];
          final entryDefinition = definitions.data[event.index].orNull;

          final updated = entryDefinition == null
              ? definitions
                  .clearAllData() // TODO: Add test for this toggle behavior
                  .mutateDataFor(
                    taskDefinition,
                    EntryDefinition.from(template: taskDefinition),
                  )
              : definitions.clearDataFor(taskDefinition);

          return emit(_Started(definitions: updated));
        },
        orElse: () => throw StateError("Invalid state to SelectLabel"),
      );
}
