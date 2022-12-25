import 'dart:async';
import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'license_list_event.dart';
part 'license_list_state.dart';
part 'license_list_bloc.freezed.dart';

typedef LicenseListBuilder = BlocBuilder<LicenseListBloc, LicenseListState>;
typedef LicenseListListener = BlocListener<LicenseListBloc, LicenseListState>;
typedef LicenseListSelector<T> = BlocSelector<LicenseListBloc, LicenseListState, T>;
typedef LicenseListConsumer = BlocConsumer<LicenseListBloc, LicenseListState>;


class LicenseListBloc extends Bloc<LicenseListEvent, LicenseListState> {
  LicenseListBloc() : super(const _Initial())  {
    on<_Create>(_onCreate);
    on<_Start>(_onStart);
    on<_Resume>(_onResume);
    on<_Pause>(_onPause);
    on<_Stop>(_onStop);
    on<_Destroy>(_onDestroy);

    add(const _Create());
  }

  void _onCreate(_Create event, Emitter<LicenseListState> emit) =>
      emit(const _Created());

  void _onStart(_Start event, Emitter<LicenseListState> emit) =>
      emit(const _Started());

  void _onResume(_Resume event, Emitter<LicenseListState> emit) =>
      emit(const _Resumed());

  void _onPause(_Pause event, Emitter<LicenseListState> emit) =>
      emit(const _Started());

  void _onStop(_Stop event, Emitter<LicenseListState> emit) =>
      emit(const _Created());

  void _onDestroy(_Destroy event, Emitter<LicenseListState> emit) =>
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
