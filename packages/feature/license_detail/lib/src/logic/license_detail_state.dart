part of 'license_detail_bloc.dart';

@freezed
class LicenseDetailState with _$LicenseDetailState {
  const LicenseDetailState._();

  const factory LicenseDetailState.initial() = _Initial;
  const factory LicenseDetailState.loadedLicenseList({
    required LicenseData licenseList,
  }) = _LoadedLicenseList;
  const factory LicenseDetailState.loadedLicenseDetail({
    required List<List<LicenseParagraph>> licenseDetail,
  }) = _LoadedLicenseDetail;
  const factory LicenseDetailState.destroyed() = _Destroyed;
  const factory LicenseDetailState.errored({
    required final Object error,
    required final StackTrace stackTrace,
  }) = _Errored;
}
