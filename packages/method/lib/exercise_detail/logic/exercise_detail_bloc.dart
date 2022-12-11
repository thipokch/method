import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_core/model/exercise.dart';
import 'package:method_data/method_data.dart';

part 'exercise_detail_event.dart';
part 'exercise_detail_state.dart';
part 'exercise_detail_bloc.freezed.dart';

typedef ExerciseDetailBuilder
    = BlocBuilder<ExerciseDetailBloc, ExerciseDetailState>;
typedef ExerciseDetailListener
    = BlocListener<ExerciseDetailBloc, ExerciseDetailState>;
typedef ExerciseDetailSelector<T>
    = BlocSelector<ExerciseDetailBloc, ExerciseDetailState, T>;
typedef ExerciseDetailConsumer
    = BlocConsumer<ExerciseDetailBloc, ExerciseDetailState>;

/*
 *
 *     [INITIAL] ──┐
 *                 ↓
 *         ┌── [CREATED] ──┐
 *         ↓       ↑       ↓
 *    [DESTROYED]  └── [STARTED] ──┐
 *                         ↑       ↓
 *                         └── [RESUMED]
 * 
 */

class ExerciseDetailBloc
    extends Bloc<ExerciseDetailEvent, ExerciseDetailState> {
  ExerciseDetailBloc({
    required this.id,
    required this.repository,
  }) : super(const _Initial()) {
    // on<_Start>(_onStart);
    add(const _Start());
  }

  final String id;
  final Repository repository;

  // void _onStart(_Start event, Emitter<ExerciseDetailState> emit) =>
  //     emit.forEach(
  //       repository.exercises.stream(id),
  //       onData: _onData,
  //       onError: _onError,
  //     );

  // STREAM EVENTS

  ExerciseDetailState _onData(Exercise? exercise) {
    log("$runtimeType - data");

    return exercise != null
        ? _Started(exercise: exercise)
        : _onError("Given exercise ($id) returns null.", StackTrace.current);
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
