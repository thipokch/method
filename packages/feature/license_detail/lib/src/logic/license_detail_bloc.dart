import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method_license_repository/license_repository.dart';

part 'license_detail_state.dart';
part 'license_detail_bloc.freezed.dart';

typedef LicenseDetailBuilder
    = BlocBuilder<LicenseDetailBloc, LicenseDetailState>;
typedef LicenseDetailListener
    = BlocListener<LicenseDetailBloc, LicenseDetailState>;
typedef LicenseDetailSelector<T>
    = BlocSelector<LicenseDetailBloc, LicenseDetailState, T>;
typedef LicenseDetailConsumer
    = BlocConsumer<LicenseDetailBloc, LicenseDetailState>;

class LicenseDetailBloc extends Cubit<LicenseDetailState> {
  LicenseDetailBloc({
    required this.packageName,
    required this.service,
  }) : super(const _Initial()) {
    service.licenses
      ..then(_onLoadLicenseList, onError: onError)
      ..then(_loadLicenseDetail, onError: onError);
  }

  final String packageName;
  final LicenseRepository service;

  void _onLoadLicenseList(LicenseData licenseList) =>
      emit(_LoadedLicenseList(licenseList: licenseList));

  void _loadLicenseDetail(LicenseData licenses) => emit(_LoadedLicenseDetail(
        licenseDetail: service.getLicenseDetail(packageName),
      ));
}
