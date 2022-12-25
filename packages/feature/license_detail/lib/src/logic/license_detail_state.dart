part of 'license_detail_bloc.dart';

/// {@template license_detail_state}
/// LicenseDetailState description
/// {@endtemplate}
@freezed
class LicenseDetailState with _$LicenseDetailState {
  const LicenseDetailState._();

  const factory LicenseDetailState.initial() = _Initial;
  const factory LicenseDetailState.created() = _Created;
  const factory LicenseDetailState.started() = _Started;
  const factory LicenseDetailState.resumed() = _Resumed;
  const factory LicenseDetailState.destroyed() = _Destroyed;
  const factory LicenseDetailState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
