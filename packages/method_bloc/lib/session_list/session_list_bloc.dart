import 'dart:async';

import 'package:method_core/model/exercise.dart';
import 'package:method_core/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

part 'session_list_event.dart';
part 'session_list_state.dart';
part 'session_list_bloc.freezed.dart';

class SessionListBloc extends Bloc<SessionListEvent, SessionListState> {
  final Repository repo;
  StreamSubscription<List<Session>>? subscription;

  SessionListBloc({
    required this.repo,
  }) : super(const _Initial()) {
    on<_Load>(_load);
    on<_LoadByExercise>(_loadByExercise);
    on<_Update>(_update);
    on<_Close>(_close);
  }

  void _load(_Load event, Emitter<SessionListState> emit) {
    subscription = repo.sessions.streamCollection().listen((event) {
      add(_Update(sessions: event));
    });
  }

  void _close(_Close event, Emitter<SessionListState> emit) {
    subscription?.cancel();
    emit(const SessionListState.initial());
  }

  void _loadByExercise(_LoadByExercise event, Emitter<SessionListState> emit) {
    subscription =
        repo.sessions.streamByExercise(event.exercise).listen((event) {
      add(_Update(sessions: event));
    });
  }

  void _update(_Update event, Emitter<SessionListState> emit) {
    emit(SessionListState.loaded(sessions: event.sessions));
  }

  @override
  Future<void> close() {
    subscription?.cancel();

    return super.close();
  }
}
