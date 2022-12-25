import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'terms_event.dart';
part 'terms_state.dart';
part 'terms_bloc.freezed.dart';

typedef TermsBuilder = BlocBuilder<TermsBloc, TermsState>;
typedef TermsListener = BlocListener<TermsBloc, TermsState>;
typedef TermsSelector<T> = BlocSelector<TermsBloc, TermsState, T>;
typedef TermsConsumer = BlocConsumer<TermsBloc, TermsState>;

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

class TermsBloc extends Bloc<TermsEvent, TermsState> {
  TermsBloc() : super(const _Initial()) {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<TermsState> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<TermsState> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<TermsState> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<TermsState> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<TermsState> emit) => emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<TermsState> emit) =>
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
