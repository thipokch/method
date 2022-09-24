import 'package:core/model/exercise.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:repository/repository.dart';

part 'exercise_list_event.dart';
part 'exercise_list_state.dart';
part 'exercise_list_bloc.freezed.dart';

class ExerciseListBloc extends Bloc<ExerciseListEvent, ExerciseListState> {
  final Repository repo;

  ExerciseListBloc({
    required this.repo,
  }) : super(const _Initial()) {
    on<_Load>(_load);
    on<_Update>(_update);
  }

  void _load(_Load event, Emitter<ExerciseListState> emit) {
    repo.exercises.streamCollection().listen((event) {
      add(_Update(exercises: event));
    });

    if (event.boostrap != null && repo.exercises.count == 0) {
      repo.exercises.putAll(event.boostrap!);
    }
  }

  void _update(_Update event, Emitter<ExerciseListState> emit) {
    emit(ExerciseListState.loaded(exercises: event.exercises));
  }
}
