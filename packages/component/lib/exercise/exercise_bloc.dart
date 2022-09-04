import 'package:core/model/exercise.dart';
import 'package:core/model/session.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'exercise_event.dart';
part 'exercise_state.dart';
part 'exercise_bloc.freezed.dart';

class ExerciseBloc extends Bloc<ExerciseEvent, ExerciseState> {
  ExerciseBloc({
    required Exercise exercise,
  }) : super(_ExerciseLoaded(exercise: exercise)) {
    on<_LoadExercise>(_onLoadExercise);
    on<_CloseExercise>(_onCloseExercise);
    on<_LoadSession>(_onLoadSession);
    on<_AddData>(_onAddData);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  void _onLoadExercise(_LoadExercise event, Emitter<ExerciseState> emit) {
    emit(ExerciseState.exerciseLoaded(exercise: event.exercise));
  }

  void _onCloseExercise(_CloseExercise event, Emitter<ExerciseState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => emit(
          ExerciseState.exerciseLoaded(
            exercise: exercise,
          ),
        ),
        exerciseLoaded: (exercise) => emit(
          ExerciseState.exerciseLoaded(
            exercise: exercise,
          ),
        ),
        orElse: () => null,
      );

  void _onLoadSession(_LoadSession event, Emitter<ExerciseState> emit) =>
      state.maybeWhen(
        exerciseLoaded: (exercise) => emit(
          ExerciseState.sessionLoaded(
            exercise: exercise,
            session: event.session,
          ),
        ),
        orElse: () => null,
      );

  void _onAddData(_AddData event, Emitter<ExerciseState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => emit(
          ExerciseState.sessionLoaded(
            exercise: exercise,
            session: session.copyWith(
              id: event.text,
            ),
          ),
        ),
        orElse: () => throw UnimplementedError(),
      );

  void _onUpdateData(_UpdateData event, Emitter<ExerciseState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => null,
        orElse: () => throw UnimplementedError(),
      );

  void _onDeleteData(_DeleteData event, Emitter<ExerciseState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) => null,
        orElse: () => throw UnimplementedError(),
      );
}
