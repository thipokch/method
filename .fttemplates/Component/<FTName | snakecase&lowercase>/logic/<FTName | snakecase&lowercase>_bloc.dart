import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part '<FTName | snakecase&lowercase>_event.dart';
part '<FTName | snakecase&lowercase>_state.dart';
part '<FTName | snakecase&lowercase>_bloc.freezed.dart';

typedef <FTName | pascalcase>Builder = BlocBuilder<<FTName | pascalcase>Bloc, <FTName | pascalcase>State>;
typedef <FTName | pascalcase>Listener = BlocListener<<FTName | pascalcase>Bloc, <FTName | pascalcase>State>;
typedef <FTName | pascalcase>Selector<T> = BlocSelector<<FTName | pascalcase>Bloc, <FTName | pascalcase>State, T>;
typedef <FTName | pascalcase>Consumer = BlocConsumer<<FTName | pascalcase>Bloc, <FTName | pascalcase>State>;

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

class <FTName | pascalcase>Bloc extends Bloc<<FTName | pascalcase>Event, <FTName | pascalcase>State> {
  <FTName | pascalcase>Bloc() : super(const _Initial()) {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<<FTName | pascalcase>State> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<<FTName | pascalcase>State> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<<FTName | pascalcase>State> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<<FTName | pascalcase>State> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<<FTName | pascalcase>State> emit) =>
      emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<<FTName | pascalcase>State> emit) =>
      emit(const _Destroyed());

  // STREAM EVENTS

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
    log("$runtimeType - error : $event");
    super.onEvent(event);
  }

  @override
  void onError(error, stackTrace) {
    // TODO: implement analytics here
    log("$runtimeType - error", error: error, stackTrace: stackTrace);
    super.onError(error, stackTrace);
  }

  @override
  Future<void> close() {
    add(const _Destroy());

    return super.close();
  }
}