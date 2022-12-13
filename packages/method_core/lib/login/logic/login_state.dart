part of 'login_bloc.dart';

/// {@template login_state}
/// LoginState description
/// {@endtemplate}
@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState.initial() = _Initial;
  const factory LoginState.created() = _Created;
  const factory LoginState.started() = _Started;
  const factory LoginState.resumed() = _Resumed;
  const factory LoginState.destroyed() = _Destroyed;
  const factory LoginState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
