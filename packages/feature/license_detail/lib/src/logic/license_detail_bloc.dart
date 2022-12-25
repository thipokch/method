import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'license_detail_event.dart';
part 'license_detail_state.dart';
part 'license_detail_bloc.freezed.dart';

typedef LicenseDetailBuilder = BlocBuilder<LicenseDetailBloc, LicenseDetailState>;
typedef LicenseDetailListener = BlocListener<LicenseDetailBloc, LicenseDetailState>;
typedef LicenseDetailSelector<T> = BlocSelector<LicenseDetailBloc, LicenseDetailState, T>;
typedef LicenseDetailConsumer = BlocConsumer<LicenseDetailBloc, LicenseDetailState>;


class LicenseDetailBloc extends Bloc<LicenseDetailEvent, LicenseDetailState> {
  LicenseDetailBloc() : super(const _Initial())  {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<LicenseDetailState> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<LicenseDetailState> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<LicenseDetailState> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<LicenseDetailState> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<LicenseDetailState> emit) =>
      emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<LicenseDetailState> emit) =>
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
