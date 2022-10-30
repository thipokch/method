import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/entry_edit/base/entry_edit_bloc_base.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/task.dart';

part 'entry_edit_event.dart';
part 'entry_edit_state.dart';
part 'entry_edit_bloc.freezed.dart';

typedef EntryEditBuilder = BlocBuilder<EntryEditBloc, EntryEditState>;
typedef EntryEditListener = BlocListener<EntryEditBloc, EntryEditState>;
typedef EntryEditSelector<T> = BlocSelector<EntryEditBloc, EntryEditState, T>;
typedef EntryEditConsumer = BlocConsumer<EntryEditBloc, EntryEditState>;

class EntryEditBloc extends EntryEditBlocBase<EntryEditEvent, EntryEditState> {
  EntryEditBloc({
    required super.repository,
    super.analytics,
    required String taskId,
  }) : super(const EntryEditState.intial()) {
    on<_StartTask>(onStartTask);
    on<_StartEntry>(onStartEntry);
    add(_StartTask(taskId: taskId));
  }

  @override
  EntryEditState onStreamData(Entry? entry) =>
      entry != null ? _Started(entry: entry) : const _Initial();

  @override
  EntryEditState onStreamError(Object error, StackTrace stackTrace) =>
      _Errored(error: error, stackTrace: stackTrace);

  // @override
  // EntryEditStateBase onStreamData(Entry? entry) =>
  //     entry != null ? _Started(entry: entry) : const _Initial();

  // @override
  // EntryEditBase_Errored onStreamError(Object error, StackTrace stackTrace) =>
  //     _Errored(error: error, stackTrace: stackTrace);
}
