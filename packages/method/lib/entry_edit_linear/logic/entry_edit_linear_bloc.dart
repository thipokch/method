import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

part 'entry_edit_linear_event.dart';
part 'entry_edit_linear_state.dart';
part 'entry_edit_linear_bloc.freezed.dart';

typedef EntryEditLinearBuilder
    = BlocBuilder<EntryEditLinearBloc, EntryEditLinearState>;
typedef EntryEditLinearListener
    = BlocListener<EntryEditLinearBloc, EntryEditLinearState>;
typedef EntryEditLinearSelector<T>
    = BlocSelector<EntryEditLinearBloc, EntryEditLinearState, T>;
typedef EntryEditLinearConsumer
    = BlocConsumer<EntryEditLinearBloc, EntryEditLinearState>;

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

class EntryEditLinearBloc
    extends EntryEditBlocBase<EntryEditLinearEvent, EntryEditLinearState> {
  EntryEditLinearBloc({
    super.analytics,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_AddNote>(_onAddNote);
    on<_UpdateNote>(_onUpdateNote);
  }

  _onStart(_Start event, Emitter<EntryEditLinearState> emit) =>
      emit(_Started(definitions: event.definitions));

  // BLOC EVENTS

  void _onAddNote(
    _AddNote event,
    Emitter<EntryEditLinearState> emit,
  ) =>
      state.maybeWhen(
        started: (definitions) {
          final taskDefinition = definitions.commands[0];

          final updated = definitions.insertDataFor(
            taskDefinition,
            EntryDefinition.from(
              template: taskDefinition,
              data: event.text,
            ),
          );

          return emit(_Started(definitions: updated));
        },
        orElse: () => throw StateError("Invalid state to SelectLabel"),
      );

  void _onUpdateNote(
    _UpdateNote event,
    Emitter<EntryEditLinearState> emit,
  ) =>
      state.maybeWhen(
        started: (definitions) {
          final updated = definitions.mutateDataAt(
            definitions.commands[0],
            EntryDefinition.from(
              template: definitions.commands[0],
              data: event.text,
            ),
            event.index,
          );

          return emit(_Started(definitions: updated));
        },
        orElse: () => throw StateError("Invalid state to UpdateNote"),
      );
}
