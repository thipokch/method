import 'package:core/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

part 'session_list_event.dart';
part 'session_list_state.dart';
part 'session_list_bloc.freezed.dart';

class SessionListBloc extends Bloc<SessionListEvent, SessionListState> {
  final Repository repo;

  SessionListBloc({
    required this.repo,
  }) : super(const _Initial()) {
    on<_Load>(_load);
    on<_Update>(_update);
  }

  void _load(_Load event, Emitter<SessionListState> emit) {
    repo.sessions.streamCollection().listen((event) {
      add(_Update(sessions: event));
    });
  }

  void _update(_Update event, Emitter<SessionListState> emit) {
    emit(SessionListState.loaded(sessions: event.sessions));
  }
}
