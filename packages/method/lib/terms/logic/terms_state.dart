part of 'terms_bloc.dart';

@freezed
class TermsState with _$TermsState {
  const TermsState._();

  const factory TermsState.initial() = _Initial;
  const factory TermsState.created() = _Created;
  const factory TermsState.started() = _Started;
  const factory TermsState.resumed() = _Resumed;
  const factory TermsState.destroyed() = _Destroyed;
  const factory TermsState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
