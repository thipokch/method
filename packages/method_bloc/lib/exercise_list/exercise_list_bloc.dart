import 'dart:async';

import 'package:method_core/model/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_repo/repository.dart';

part 'exercise_list_event.dart';
part 'exercise_list_state.dart';
part 'exercise_list_bloc.freezed.dart';

class ExerciseListBloc extends Bloc<ExerciseListEvent, ExerciseListState> {
  final Repository repo;
  late StreamSubscription<List<Exercise>> subscription;

  ExerciseListBloc({
    required this.repo,
  }) : super(const _Initial()) {
    on<_Load>(_load);
    on<_Update>(_update);
    on<_Close>(_close);
  }

  void _load(_Load event, Emitter<ExerciseListState> emit) {
    subscription = repo.exercises.streamCollection().listen((event) {
      add(_Update(exercises: event));
    });

    if (event.boostrap != null && repo.exercises.count == 0) {
      repo.exercises.putAll(event.boostrap!);
    }
  }

  void _update(_Update event, Emitter<ExerciseListState> emit) {
    emit(ExerciseListState.loaded(exercises: event.exercises));
  }

  void _close(_Close event, Emitter<ExerciseListState> emit) {
    subscription.cancel();
    emit(const ExerciseListState.initial());
  }
}
