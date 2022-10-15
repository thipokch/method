import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

import '../entry/entry_bloc.dart';

part 'session_event.dart';
part 'session_state.dart';
part 'session_bloc.freezed.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final Repository repo;

  SessionBloc._({
    required this.repo,
    required Exercise exercise,
    Session? session,
  }) : super(session == null
            ? _ExerciseLoaded(exercise: exercise)
            : _SessionLoaded(exercise: exercise, session: session)) {
    on<_LoadExercise>(_onLoadExercise);
    on<_CloseExercise>(_onCloseExercise);
    on<_LoadSession>(_onLoadSession);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  static provider({
    required Exercise exercise,
    Session? session,
    BlocWidgetListener<SessionState>? listener,
    required Widget child,
  }) =>
      BlocProvider(
        create: (_) => SessionBloc._(
          repo: _.read(),
          exercise: exercise,
          session: session,
        ),
        child: listener != null
            ? BlocListener<SessionBloc, SessionState>(listener: listener)
            : child,
      );

  static builder({
    required BlocWidgetBuilder<SessionState> builder,
  }) =>
      BlocBuilder<SessionBloc, SessionState>(builder: builder);

  void handleEntryBlocState(BuildContext context, EntryState state) =>
      state.maybeWhen(
        entryLoaded: (task, entry) =>
            add(SessionEvent.updateData(entry: entry)),
        orElse: () => null,
      );

  void _onLoadExercise(_LoadExercise event, Emitter<SessionState> emit) {
    emit(SessionState.exerciseLoaded(exercise: event.exercise));
  }

  void _onCloseExercise(_CloseExercise event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        orElse: () => throw UnimplementedError(),
      );

  void _onLoadSession(_LoadSession event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        exerciseLoaded: (exercise) => emit(
          SessionState.sessionLoaded(
            exercise: exercise,
            session: event.session ??
                Session.create(
                  template: exercise,
                  hierarchyPath: "${exercise.hierarchyPath}/${exercise.id}",
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                ),
          ),
        ),
        orElse: () => null,
      );

  void _onUpdateData(_UpdateData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) {
          final index = exercise.definitions
              .indexWhere((e) => event.entry.template.id == e.id);

          final updated = index >= 0
              ? session.copyWith(
                  definitions: session.definitions.toList()
                    ..setAll(index, [event.entry]),
                  updatedAt: DateTime.now(),
                  commitedAt: session.commitedAt ?? DateTime.now(),
                )
              : session;

          emit(SessionState.sessionLoaded(
            exercise: exercise,
            session: updated,
          ));

          return repo.sessions.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );

  void _onDeleteData(_DeleteData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) {
          final index = exercise.definitions
              .indexWhere((e) => event.entry.template.id == e.id);

          final updated = index >= 0
              ? session.copyWith(
                  definitions: session.definitions.toList()
                    ..setAll(index, [null]),
                )
              : session;

          emit(SessionState.sessionLoaded(
            exercise: exercise,
            session: updated,
          ));

          return repo.sessions.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );
}
