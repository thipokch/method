import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_state.dart';
part 'app_event.dart';
part 'app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(_Initial()) {
    on<_Load>(_onLoad);
    on<_LoadModal>(_onLoadModal);
  }

  void _onLoad(_Load event, Emitter<AppState> emit) => state.whenOrNull(
      // initial: () => emit(AppState.loaded(masterFlow: event.flow)),
      );

  void _onLoadModal(_LoadModal event, Emitter<AppState> emit) =>
      state.whenOrNull(
        loaded: (masterFlow, modalFlow, slaveFlow) => emit(AppState.loaded(
          masterFlow: masterFlow,
          modalFlow: event.flow,
          slaveFlow: slaveFlow,
        )),
      );
}
