import 'package:core/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final Repository repo;

  HistoryBloc({
    required this.repo,
  }) : super(const _Initial()) {
    on<_Load>(_load);
    on<_Update>(_update);
    add(const HistoryEvent.load());
  }

  void _load(_Load event, Emitter<HistoryState> emit) {
    repo.sessions.streamCollection().listen((event) {
      add(_Update(sessions: event));
    });
  }

  void _update(_Update event, Emitter<HistoryState> emit) {
    emit(HistoryState.loaded(sessions: event.sessions));
  }
}
