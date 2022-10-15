import 'package:flutter/widgets.dart';
import 'package:method_core/model/entry_definition.dart';
import 'package:method_core/model/task_definition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

part 'definition_event.dart';
part 'definition_state.dart';
part 'definition_bloc.freezed.dart';

class DefinitionBloc extends Bloc<DefinitionEvent, DefinitionState> {
  final Repository repo;

  DefinitionBloc._({
    required this.repo,
    required TaskDefinition task,
    EntryDefinition? entry,
  }) : super(_TaskLoaded(task: task)) {
    on<_LoadTask>(_onLoadTask);
    on<_CloseTask>(_onCloseTask);
    on<_LoadDefinition>(_onLoadDefinition);
    on<_AddData>(_onAddData);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  static provide({
    required TaskDefinition task,
    EntryDefinition? entry,
    required Widget child,
  }) =>
      BlocProvider(
        create: (_) => DefinitionBloc._(
          repo: _.read(),
          task: task,
          entry: entry,
        ),
        child: child,
      );

  static builder({
    required BlocWidgetBuilder<DefinitionState> builder,
  }) =>
      BlocBuilder<DefinitionBloc, DefinitionState>(
        builder: builder,
      );

  void _onLoadTask(_LoadTask event, Emitter<DefinitionState> emit) {
    emit(DefinitionState.taskLoaded(task: event.task));
  }

  // ignore: no-empty-block
  void _onCloseTask(_CloseTask event, Emitter<DefinitionState> emit) {}

  void _onLoadDefinition(
    _LoadDefinition event,
    Emitter<DefinitionState> emit,
    // ignore: no-empty-block
  ) {}

  // ignore: no-empty-block
  void _onAddData(_AddData event, Emitter<DefinitionState> emit) {}

  // ignore: no-empty-block
  void _onUpdateData(_UpdateData event, Emitter<DefinitionState> emit) {}

  // ignore: no-empty-block
  void _onDeleteData(_DeleteData event, Emitter<DefinitionState> emit) {}
}
