import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

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

class EntryEditDivergeBloc
    extends EntryEditBlocBase<EntryEditDivergeEvent, EntryEditDivergeState> {
  EntryEditDivergeBloc({
    super.analytics,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_SelectNote>(_onSelectNote);
    on<_UpdateNote>(_onUpdateNote);
  }
  _onStart(_Start event, Emitter<EntryEditDivergeState> emit) =>
      emit(_Started(definitions: event.definitions));

  // BLOC EVENTS

  void _onSelectNote(
    _SelectNote event,
    Emitter<EntryEditDivergeState> emit,
  ) =>
      state.maybeWhen(
        started: (definitions) {
          final taskDefinition = definitions.commands[event.index];
          final entryDefinition = definitions.data[event.index].orNull;

          if (entryDefinition != null) return;

          final updated = definitions.mutateDataFor(
            taskDefinition,
            EntryDefinition.from(template: taskDefinition),
          );

          return emit(_Started(definitions: updated));
        },
        orElse: () => throw StateError("Invalid state to SelectLabel"),
      );

  void _onUpdateNote(
    _UpdateNote event,
    Emitter<EntryEditDivergeState> emit,
  ) =>
      state.maybeWhen(
        started: (definitions) => emit(_Started(
          definitions: definitions.mutateDataFor(
            definitions.commands[event.index],
            EntryDefinition.from(
              template: definitions.commands[event.index],
              data: event.text,
            ),
          ),
        )),
        orElse: () => throw StateError("Invalid state to UpdateNote"),
      );
}