import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

part 'session_event.dart';
part 'session_state.dart';
part 'session_bloc.freezed.dart';

class SessionBloc extends Bloc<SessionEvent, SessionState> {
  final Repository repo;

  SessionBloc({
    required this.repo,
    required Exercise exercise,
  }) : super(_ExerciseLoaded(exercise: exercise)) {
    on<_LoadExercise>(_onLoadExercise);
    on<_CloseExercise>(_onCloseExercise);
    on<_LoadSession>(_onLoadSession);
    on<_AddData>(_onAddData);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  void _onLoadExercise(_LoadExercise event, Emitter<SessionState> emit) {
    emit(SessionState.exerciseLoaded(exercise: event.exercise));
  }

  void _onCloseExercise(_CloseExercise event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => emit(
          SessionState.exerciseLoaded(
            exercise: exercise,
          ),
        ),
        exerciseLoaded: (exercise) => emit(
          SessionState.exerciseLoaded(
            exercise: exercise,
          ),
        ),
        orElse: () => null,
      );

  void _onLoadSession(_LoadSession event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        exerciseLoaded: (exercise) => emit(
          SessionState.sessionLoaded(
            exercise: exercise,
            session: event.session,
          ),
        ),
        orElse: () => null,
      );

  void _onAddData(_AddData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => emit(
          SessionState.sessionLoaded(
            exercise: exercise,
            session: session.copyWith(
              id: event.text,
            ),
          ),
        ),
        orElse: () => throw UnimplementedError(),
      );

  void _onUpdateData(_UpdateData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => null,
        orElse: () => throw UnimplementedError(),
      );

  void _onDeleteData(_DeleteData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => null,
        orElse: () => throw UnimplementedError(),
      );
}
