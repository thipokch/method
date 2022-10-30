import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/entry.dart';
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
    on<_UpdateEntry>(_onUpdateEntry);
  }

  final Repository repository;
  final FirebaseAnalytics? analytics;

  void _onStartExercise(
    _StartExercise event,
    Emitter<SessionEditState> emit,
  ) async {
    final exercise = await repository.exercises.get(event.exerciseId);

    if (exercise == null) {
      return addError(
        ArgumentError(
          "Given id ${event.exerciseId} not found in exercise collection.",
        ),
        StackTrace.current,
      );
    }

    final newSession = Session.from(template: exercise);

    emit(_Started(session: newSession));

    // TODO: fix - onData will error with forEach.
  }

  void _onStartSession(
    _StartSession event,
    Emitter<SessionEditState> emit,
  ) async =>
      await emit.forEach(
        repository.sessions.stream(event.sessionId),
        onData: _onData,
        onError: _onError,
      );

  void _onUpdateEntry(
    _UpdateEntry event,
    Emitter<SessionEditState> emit,
  ) =>
      state.maybeMap(
        started: (_) {
          final builtDefinition = _.session.builtDefinition;

          final updated = _.session.copyWith(
            definitions: builtDefinition
                .mutateDataFor(event.entry.template, event.entry)
                .asEntryList(),
          );

          return repository.sessions.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );

  // STREAM EVENTS

  SessionEditState _onData(Session? session) {
    log("$runtimeType - data");

    return session != null
        ? _Started(session: session)
        : _Errored(error: StateError(""), stackTrace: StackTrace.current);
  }

  _Errored _onError(Object error, StackTrace stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    onError(error, stackTrace);

    return _Errored(error: error, stackTrace: stackTrace);
  }

  // BLOC EVENTS

  // @override
  // void onEvent(event) {
  //   // TODO: implement analytics here
  //   log("$runtimeType - event : $event");
  //   super.onEvent(event);
  // }

  @override
  Future<void> close() {
    return super.close();
  }
}
