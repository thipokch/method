import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'definition_edit_card_event.dart';
part 'definition_edit_card_state.dart';
part 'definition_edit_card_bloc.freezed.dart';

typedef DefinitionEditCardBuilder
    = BlocBuilder<DefinitionEditCardBloc, DefinitionEditCardState>;
typedef DefinitionEditCardListener
    = BlocListener<DefinitionEditCardBloc, DefinitionEditCardState>;
typedef DefinitionEditCardSelector<T>
    = BlocSelector<DefinitionEditCardBloc, DefinitionEditCardState, T>;
typedef DefinitionEditCardConsumer
    = BlocConsumer<DefinitionEditCardBloc, DefinitionEditCardState>;

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

class DefinitionEditCardBloc
    extends Bloc<DefinitionEditCardEvent, DefinitionEditCardState> {
  DefinitionEditCardBloc() : super(const _Initial()) {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<DefinitionEditCardState> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<DefinitionEditCardState> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<DefinitionEditCardState> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<DefinitionEditCardState> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<DefinitionEditCardState> emit) =>
      emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<DefinitionEditCardState> emit) =>
      emit(const _Destroyed());

  // // STREAM EVENTS

  // _Errored _onError(Object error, StackTrace stackTrace) {
  //   // TODO: implement analytics here
  //   log("$runtimeType - error", error: error, stackTrace: stackTrace);
  //   onError(error, stackTrace);

  //   return _Errored(error: error, stackTrace: stackTrace);
  // }

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
