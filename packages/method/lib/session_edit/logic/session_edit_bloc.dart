import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/repository.dart';

part 'session_edit_event.dart';
part 'session_edit_state.dart';
part 'session_edit_bloc.freezed.dart';

typedef SessionEditBuilder = BlocBuilder<SessionEditBloc, SessionEditState>;
typedef SessionEditListener = BlocListener<SessionEditBloc, SessionEditState>;
typedef SessionEditSelector<T>
    = BlocSelector<SessionEditBloc, SessionEditState, T>;
typedef SessionEditConsumer = BlocConsumer<SessionEditBloc, SessionEditState>;

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

class SessionEditBloc extends Bloc<SessionEditEvent, SessionEditState> {
  SessionEditBloc({
    required this.repository,
    this.analytics,
  }) : super(const _Initial()) {
    on<_StartExercise>(_onStartExercise);
    on<_StartSession>(_onStartSession);
  }

  final Repository repository;
  final FirebaseAnalytics? analytics;

  void _onStartExercise(
    _StartExercise event,
    Emitter<SessionEditState> emit,
  ) async =>
      await repository.exercises.get(event.exerciseId).then((value) =>
          value != null
              ? emit(_ExerciseStarted(exercise: value))
              : addError(ArgumentError(""), StackTrace.current));

  void _onStartSession(
    _StartSession event,
    Emitter<SessionEditState> emit,
  ) async {
    final newSession = event.sessionId == null
        ? state.mapOrNull(
            exerciseStarted: (value) => Session.from(template: value.exercise),
          )
        : null;

    if (newSession != null) emit(_SessionStarted(session: newSession));

    if (newSession != null || event.sessionId != null) {
      await emit.forEach(
        repository.sessions.stream(event.sessionId ?? newSession!.id),
        onData: _onData,
        onError: _onError,
      );
    }
  }

  // STREAM EVENTS

  SessionEditState _onData(Session? session) {
    log("$runtimeType - data");

    return session != null
        ? _SessionStarted(session: session)
        : _Errored(error: StateError(""), stackTrace: StackTrace.current);
  }

  _Errored _onError(Object error, StackTrace stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    onError(error, stackTrace);

    return _Errored(error: error, stackTrace: stackTrace);
  }

  // BLOC EVENTS

  @override
  void onEvent(event) {
    // TODO: implement analytics here
    log("$runtimeType - error : $event");
    super.onEvent(event);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
