part of 'license_list_bloc.dart';

/// {@template license_list_state}
/// LicenseListState description
/// {@endtemplate}
@freezed
class LicenseListState with _$LicenseListState {
  const LicenseListState._();

  const factory LicenseListState.initial() = _Initial;
  const factory LicenseListState.created() = _Created;
  const factory LicenseListState.started() = _Started;
  const factory LicenseListState.resumed() = _Resumed;
  const factory LicenseListState.destroyed() = _Destroyed;
  const factory LicenseListState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
