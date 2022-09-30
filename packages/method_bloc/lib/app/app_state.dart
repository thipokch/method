part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  AppState._();

  factory AppState.initial() = _Initial;

  factory AppState.loaded({
    required Widget masterFlow,
    Widget? modalFlow,
    Widget? slaveFlow,
  }) = _Loaded;
}
