import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'definition_edit_label_event.dart';
part 'definition_edit_label_state.dart';
part 'definition_edit_label_bloc.freezed.dart';

typedef DefinitionEditLabelBuilder
    = BlocBuilder<DefinitionEditLabelBloc, DefinitionEditLabelState>;
typedef DefinitionEditLabelListener
    = BlocListener<DefinitionEditLabelBloc, DefinitionEditLabelState>;
typedef DefinitionEditLabelSelector<T>
    = BlocSelector<DefinitionEditLabelBloc, DefinitionEditLabelState, T>;
typedef DefinitionEditLabelConsumer
    = BlocConsumer<DefinitionEditLabelBloc, DefinitionEditLabelState>;

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

class DefinitionEditLabelBloc
    extends Bloc<DefinitionEditLabelEvent, DefinitionEditLabelState> {
  DefinitionEditLabelBloc() : super(const _Initial()) {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<DefinitionEditLabelState> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<DefinitionEditLabelState> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<DefinitionEditLabelState> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<DefinitionEditLabelState> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<DefinitionEditLabelState> emit) =>
      emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<DefinitionEditLabelState> emit) =>
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
