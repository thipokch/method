import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';

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

class EntryEditConvergeBloc
    extends EntryEditBlocBase<EntryEditConvergeEvent, EntryEditConvergeState> {
  EntryEditConvergeBloc({
    required super.repository,
    super.analytics,
  }) : super(const _Initial()) {
    on<_StartTask>(onStartTask);
    on<_StartEntry>(onStartEntry);
    on<_SelectLabel>(_onSelectLabel);
  }

  // BLOC EVENTS

  void _onSelectLabel(
    _SelectLabel event,
    Emitter<EntryEditConvergeState> emit,
  ) =>
      log(event.toString());

  @override
  EntryEditConvergeState onStreamData(Entry? entry) =>
      entry != null ? _Started(entry: entry) : const _Initial();

  @override
  EntryEditConvergeState onStreamError(Object error, StackTrace stackTrace) =>
      _Errored(error: error, stackTrace: stackTrace);
}
