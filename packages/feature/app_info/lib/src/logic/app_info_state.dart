part of 'app_info_cubit.dart';

/// {@template app_info_state}
/// AppInfoState description
/// {@endtemplate}
@freezed
class AppInfoState with _$AppInfoState {
  const AppInfoState._();

  const factory AppInfoState.initial() = _Initial;
  const factory AppInfoState.created() = _Created;
  const factory AppInfoState.started() = _Started;
  const factory AppInfoState.resumed() = _Resumed;
  const factory AppInfoState.destroyed() = _Destroyed;
  const factory AppInfoState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
