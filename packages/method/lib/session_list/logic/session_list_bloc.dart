import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/route/route.dart';
import 'package:method/session_detail/session_detail.dart';
import 'package:method/util/bloc_navigator.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/repository.dart';

part 'session_list_event.dart';
part 'session_list_state.dart';
part 'session_list_bloc.freezed.dart';

typedef SessionListBuilder = BlocBuilder<SessionListBloc, SessionListState>;
typedef SessionListListener = BlocListener<SessionListBloc, SessionListState>;
typedef SessionListSelector<T>
    = BlocSelector<SessionListBloc, SessionListState, T>;
typedef SessionListConsumer = BlocConsumer<SessionListBloc, SessionListState>;

/*
 *
 *     [INITIAL]
 *         ↓
 *     [STARTED]
 * 
 */

class SessionListBloc extends Bloc<SessionListEvent, SessionListState>
    with BlocNavigator {
  SessionListBloc({
    required this.navigator,
    required this.repository,
    this.analytics,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_SelectSession>(_onSelectSession);
    on<_DeleteSession>(_onDeleteSession);
  }

  final Repository repository;
  final FirebaseAnalytics? analytics;

  @override
  final GlobalKey<NavigatorState> navigator;

  void _onStart(_Start event, Emitter<SessionListState> emit) => emit.forEach(
        repository.sessions.streamAll(),
        onData: _onData,
        onError: _onError,
      );

  void _onSelectSession(
    _SelectSession event,
    Emitter<SessionListState> emit,
  ) =>
      SessionDetailRoute(event.session.id).go(context);

  void _onDeleteSession(
    _DeleteSession event,
    Emitter<SessionListState> emit,
  ) async =>
      await repository.sessions.remove(event.session);

  // STREAM EVENTS

  _Started _onData(List<Session> sessions) {
    log("$runtimeType - data");

    return _Started(sessions: sessions);
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
    log("$runtimeType - event : $event");
    super.onEvent(event);
  }
}
