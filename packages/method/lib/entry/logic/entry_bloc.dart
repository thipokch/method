import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'entry_event.dart';
part 'entry_state.dart';
part 'entry_bloc.freezed.dart';

typedef EntryBuilder = BlocBuilder<EntryBloc, EntryState>;
typedef EntryListener = BlocListener<EntryBloc, EntryState>;
typedef EntrySelector<T> = BlocSelector<EntryBloc, EntryState, T>;
typedef EntryConsumer = BlocConsumer<EntryBloc, EntryState>;

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

class EntryBloc extends Bloc<EntryEvent, EntryState> {
  EntryBloc() : super(const _Initial()) {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<EntryState> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<EntryState> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<EntryState> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<EntryState> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<EntryState> emit) => emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<EntryState> emit) =>
      emit(const _Destroyed());

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

  @override
  Future<void> close() {
    add(const _Destroy());

    return super.close();
  }
}
