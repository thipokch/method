import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/definition.dart';
import 'package:method_core/model/entry.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:method_core/model/task.dart';
import 'package:method_repo/method_repo.dart';

part 'session_detail_event.dart';
part 'session_detail_state.dart';
part 'session_detail_bloc.freezed.dart';

typedef SessionDetailBuilder
    = BlocBuilder<SessionDetailBloc, SessionDetailState>;
typedef SessionDetailListener
    = BlocListener<SessionDetailBloc, SessionDetailState>;
typedef SessionDetailSelector<T>
    = BlocSelector<SessionDetailBloc, SessionDetailState, T>;
typedef SessionDetailConsumer
    = BlocConsumer<SessionDetailBloc, SessionDetailState>;

class SessionDetailBloc extends Bloc<SessionDetailEvent, SessionDetailState> {
  SessionDetailBloc({
    required this.id,
    required this.repository,
  }) : super(const _Initial()) {
    // on<_Start>(_onStart);
    add(const _Start());
  }

  final String id;
  final Repository repository;

  // void _onStart(_Start event, Emitter<SessionDetailState> emit) => emit.forEach(
  //       repository.sessions.stream(id),
  //       onData: _onData,
  //       onError: _onError,
  //     );

  // STREAM EVENTS

  SessionDetailState _onData(Session? session) {
    log("$runtimeType - data");

    return session != null
        ? _Started(session: session)
        : _onError("Given session ($id) returns null.", StackTrace.current);
  }

  _Errored _onError(Object error, StackTrace stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    addError(error, stackTrace);

    return _Errored(error: error, stackTrace: stackTrace);
  }

  // BLOC EVENTS

  @override
  void onEvent(event) {
    // TODO: implement analytics here
    log("$runtimeType - event : $event");
    super.onEvent(event);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }
}
