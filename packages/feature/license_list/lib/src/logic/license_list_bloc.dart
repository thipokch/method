import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method_license_repository/license_repository.dart';

typedef LicenseListState = LicenseData?;

typedef LicenseListBuilder = BlocBuilder<LicenseListBloc, LicenseListState>;
typedef LicenseListListener = BlocListener<LicenseListBloc, LicenseListState>;
typedef LicenseListSelector<T>
    = BlocSelector<LicenseListBloc, LicenseListState, T>;
typedef LicenseListConsumer = BlocConsumer<LicenseListBloc, LicenseListState>;

class LicenseListBloc extends Cubit<LicenseListState> {
  LicenseListBloc({
    required this.licenseRepo,
    required this.onSelectPackage,
  }) : super(null) {
    licenseRepo.licenses.then((value) => emit(value), onError: onError);
  }

  final LicenseRepository licenseRepo;
  final void Function(String packageName) onSelectPackage;

  void selectPackage(String packageName) => onSelectPackage;
}
