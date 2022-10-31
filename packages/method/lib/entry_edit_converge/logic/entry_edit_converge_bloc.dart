import 'package:built_collection/built_collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';

part 'entry_edit_converge_event.dart';
part 'entry_edit_converge_state.dart';
part 'entry_edit_converge_bloc.freezed.dart';

typedef EntryEditConvergeBuilder
    = BlocBuilder<EntryEditConvergeBloc, EntryEditConvergeState>;
typedef EntryEditConvergeListener
    = BlocListener<EntryEditConvergeBloc, EntryEditConvergeState>;
typedef EntryEditConvergeSelector<T>
    = BlocSelector<EntryEditConvergeBloc, EntryEditConvergeState, T>;
typedef EntryEditConvergeConsumer
    = BlocConsumer<EntryEditConvergeBloc, EntryEditConvergeState>;

class EntryEditConvergeBloc
    extends EntryEditBlocBase<EntryEditConvergeEvent, EntryEditConvergeState> {
  EntryEditConvergeBloc({
    super.analytics,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_SelectLabel>(_onSelectLabel);
    on<_UpdateNote>(_onUpdateNote);
  }

  _onStart(_Start event, Emitter<EntryEditConvergeState> emit) =>
      emit(_Started(definitions: event.definitions));

  // BLOC EVENTS

  void _onSelectLabel(
    _SelectLabel event,
    Emitter<EntryEditConvergeState> emit,
  ) =>
      state.maybeWhen(
        started: (definitions) {
          final taskDefinition = definitions.commands[event.index + 1];
          final entryDefinition = definitions.data[event.index + 1].orNull;

          final updated = entryDefinition == null
              ? definitions.mutateDataFor(
                  taskDefinition,
                  EntryDefinition.from(template: taskDefinition),
                )
              : definitions.clearDataFor(taskDefinition);

          return emit(_Started(definitions: updated));
        },
        orElse: () => throw StateError("Invalid state to SelectLabel"),
      );

  void _onUpdateNote(
    _UpdateNote event,
    Emitter<EntryEditConvergeState> emit,
  ) =>
      state.maybeWhen(
        started: (definitions) => emit(_Started(
          definitions: definitions.mutateDataFor(
            definitions.commands[0],
            EntryDefinition.from(
              template: definitions.commands[0],
              data: event.text,
            ),
          ),
        )),
        orElse: () => throw StateError("Invalid state to UpdateNote"),
      );
}
