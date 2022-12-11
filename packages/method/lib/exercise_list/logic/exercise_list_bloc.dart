import 'dart:convert';
import 'dart:developer';

import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/app.dart';
import 'package:method/exercise_detail/route/exercise_detail_route.dart';
import 'package:method/session_edit/route/exercise_start_route.dart';
import 'package:method_core/method_core.dart';
import 'package:method_data/method_data.dart';

part 'exercise_list_event.dart';
part 'exercise_list_state.dart';
part 'exercise_list_bloc.freezed.dart';

typedef ExerciseListBuilder = BlocBuilder<ExerciseListBloc, ExerciseListState>;
typedef ExerciseListListener
    = BlocListener<ExerciseListBloc, ExerciseListState>;
typedef ExerciseListSelector<T>
    = BlocSelector<ExerciseListBloc, ExerciseListState, T>;
typedef ExerciseListConsumer
    = BlocConsumer<ExerciseListBloc, ExerciseListState>;

/*
 *
 *     [INITIAL]
 *         ↓
 *     [STARTED]
 * 
 */

class ExerciseListBloc extends Bloc<ExerciseListEvent, ExerciseListState> {
  ExerciseListBloc({
    required this.navigator,
    required this.repository,
    this.analytics,
  }) : super(const _Initial()) {
    on<_Start>(_onStart);
    on<_SelectExercise>(_onSelectExercise);
  }

  final Repository repository;
  final FirebaseAnalytics? analytics;

  final GlobalKey<NavigatorState> navigator;

  void _onStart(_Start event, Emitter<ExerciseListState> emit) =>
      emit(ExerciseListState.started(exercises: [sampleExercise]));
      
  // rootBundle
  //     .loadString('packages/method_core/assets/example.json')
  //     .then((value) => Exercise.fromJson(json.decode(value)))
  //     .then((value) => emit(ExerciseListState.started(exercises: [value])));

  // void _onStart(_Start event, Emitter<ExerciseListState> emit) => emit.forEach(
  //       repository.exercises.streamAll(),
  //       onData: _onData,
  //       onError: _onError,
  //     );

  // void _onSelectExercise(
  //   _SelectExercise event,
  //   Emitter<ExerciseListState> emit,
  // ) {}

  void _onSelectExercise(
    _SelectExercise event,
    Emitter<ExerciseListState> emit,
  ) =>
      // event.exercise.id != "note"
      //     ? ExerciseDetailRoute("test")
      //         .push(navigator.currentContext!)
      //     : 
          ExerciseStartRoute("test")
              .push(navigator.currentContext!);

  // STREAM EVENTS

  _Started _onData(List<Exercise> exercises) {
    log("$runtimeType - data");

    return _Started(exercises: exercises);
  }

  _Errored _onError(Object error, StackTrace stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    onError(error, stackTrace);

    return _Errored(error: error, stackTrace: stackTrace);
  }
  // BLOC EVENTS

  @override
  void onEvent(event) {
    // TODO: implement analytics here
    log("$runtimeType - event : $event");
    super.onEvent(event);
  }
}
