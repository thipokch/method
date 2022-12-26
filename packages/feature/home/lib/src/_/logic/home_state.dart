part of 'home_bloc.dart';

/// {@template home_state}
/// HomeState description
/// {@endtemplate}
@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState.initial() = _Initial;
  const factory HomeState.created() = _Created;
  const factory HomeState.started() = _Started;
  const factory HomeState.resumed() = _Resumed;
  const factory HomeState.destroyed() = _Destroyed;
  const factory HomeState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
