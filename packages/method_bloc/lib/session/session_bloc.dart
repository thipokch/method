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

  SessionBloc({
    required this.repo,
    required Exercise exercise,
  }) : super(_ExerciseLoaded(exercise: exercise)) {
    on<_LoadExercise>(_onLoadExercise);
    on<_CloseExercise>(_onCloseExercise);
    on<_LoadSession>(_onLoadSession);
    on<_UpdateData>(_onUpdateData);
    on<_DeleteData>(_onDeleteData);
  }

  void handleEntryBlocState(BuildContext context, EntryState state) =>
      state.maybeWhen(
        entryLoaded: (task, entry) =>
            add(SessionEvent.updateData(entry: entry)),
        orElse: () => null,
      );

  void _onLoadExercise(_LoadExercise event, Emitter<SessionState> emit) {
    emit(SessionState.exerciseLoaded(exercise: event.exercise));
  }

  void _onCloseExercise(_CloseExercise event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        orElse: () => throw UnimplementedError(),
      );

  void _onLoadSession(_LoadSession event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        exerciseLoaded: (exercise) => emit(
          SessionState.sessionLoaded(
            exercise: exercise,
            session: event.session ??
                Session.create(
                  template: exercise,
                  hierarchyPath: "${exercise.hierarchyPath}/${exercise.id}",
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                ),
          ),
        ),
        orElse: () => null,
      );

  void _onUpdateData(_UpdateData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) {
          final index =
              session.definitions.indexWhere((e) => event.entry.id == e.id);

          final updated = index >= 0
              ? session.copyWith(
                  definitions: session.definitions.toList()
                    ..setAll(index, [event.entry]),
                )
              : session.copyWith(
                  definitions: session.definitions.toList()..add(event.entry),
                );

          emit(SessionState.sessionLoaded(
            exercise: exercise,
            session: updated,
          ));

          return repo.sessions.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );

  void _onDeleteData(_DeleteData event, Emitter<SessionState> emit) =>
      state.maybeWhen(
        sessionLoaded: (exercise, session) {
          final updated = session.copyWith(
            definitions: session.definitions.toList()
              ..removeWhere((e) => event.entry.id == e.id),
          );

          emit(SessionState.sessionLoaded(
            exercise: exercise,
            session: updated,
          ));

          return repo.sessions.put(updated);
        },
        orElse: () => throw UnimplementedError(),
      );
}