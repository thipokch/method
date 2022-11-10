import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:method/license/model/license_data.dart';
import 'package:method/license/service/license_service.dart';

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

/*
 *
 *     [INITIAL] ──┐
 *                 ↓
 *         ┌── [CREATED] ──┐
 *         ↓       ↑       ↓
 *    [DESTROYED]  └── [STARTED] ──┐
 *                         ↑       ↓
 *                         └── [RESUMED]
 * 
 */

class LicenseDetailBloc extends Cubit<LicenseDetailState> {
  LicenseDetailBloc({
    required this.packageName,
    required LicenseService service,
  }) : super(const _Initial()) {
    service.licenses
      ..then(_onLoadLicenseList, onError: onError)
      ..then(_loadLicenseDetail, onError: onError);
  }

  final String packageName;

  void _onLoadLicenseList(LicenseData licenseList) =>
      emit(_LoadedLicenseList(licenseList: licenseList));

  void _loadLicenseDetail(LicenseData licenses) async {
    final List<int> bindings =
        licenses.packageLicenseBindings[packageName] ?? [];
    final List<LicenseEntry> licenseEntries =
        bindings.map((int i) => licenses.licenses[i]).toList(growable: false);

    List<List<LicenseParagraph>> licenseDetail = List.empty(growable: true);

    for (final LicenseEntry license in licenseEntries) {
      licenseDetail.add(
        await SchedulerBinding.instance.scheduleTask<List<LicenseParagraph>>(
          license.paragraphs.toList,
          Priority.animation,
          debugLabel: 'License',
        ),
      );
    }

    emit(_LoadedLicenseDetail(licenseDetail: licenseDetail));
  }
}
