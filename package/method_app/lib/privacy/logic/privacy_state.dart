part of 'privacy_bloc.dart';

@freezed
class PrivacyState with _$PrivacyState {
  const PrivacyState._();

  const factory PrivacyState.initial() = _Initial;
  const factory PrivacyState.created() = _Created;
  const factory PrivacyState.started() = _Started;
  const factory PrivacyState.resumed() = _Resumed;
  const factory PrivacyState.destroyed() = _Destroyed;
  const factory PrivacyState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
