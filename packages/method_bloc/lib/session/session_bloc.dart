import 'dart:async';

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
  StreamSubscription<Session?>? subscription;

  SessionBloc._({
    required this.repo,
    required Exercise exercise,
  }) : super(_ExerciseLoaded(exercise: exercise)) {
    on<_LoadExercise>(_onLoadExercise);
    on<_CloseExercise>(_onCloseExercise);
    on<_LoadSession>(_onLoadSession);
    on<_UpdateSession>(_onUpdateSession);
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
        )..add(_LoadSession(session: session)),
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
        entryLoaded: (task, entry) => add(_UpdateData(entry: entry)),
        orElse: () => null,
      );

  void _onLoadExercise(_LoadExercise event, Emitter<SessionState> emit) {
    emit(_ExerciseLoaded(exercise: event.exercise));
  }

  void _onCloseExercise(_CloseExercise event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        orElse: () => throw UnimplementedError(),
      );

  void _onLoadSession(_LoadSession event, Emitter<SessionState> emit) {
    final session = event.session ?? Session.from(template: state.exercise);

    subscription ??= repo.sessions.stream(session.id).listen(
      (event) {
        add(_UpdateSession(session: event ?? session));
      },
    );
  }

  void _onUpdateSession(_UpdateSession event, Emitter<SessionState> emit) =>
      emit(_SessionLoaded(
        exercise: state.exercise,
        session: event.session,
      ));

  void _onUpdateData(_UpdateData event, Emitter<SessionState> emit) {
    state.maybeWhen(
      sessionLoaded: (exercise, session) => repo.sessions.put(session.copyWith(
        definitions: session.addDefinitions([event.entry]),
      )),
      orElse: () => throw UnimplementedError(),
    );
  }

  void _onDeleteData(_DeleteData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => repo.sessions.put(
          session.copyWith(
            definitions: session.addDefinitions([event.entry]),
          ),
        ),
        orElse: () => throw UnimplementedError(state.toString()),
      );

  @override
  Future<void> close() {
    subscription?.cancel();

    return super.close();
  }
}
