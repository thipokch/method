import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:method/app/route/app_flow.dart';
import 'package:method/license/license.dart';
import 'package:method/license_detail/route/route.dart';
import 'package:method/util/bloc_navigator.dart';

typedef LicenseListState = LicenseData?;

typedef LicenseListBuilder = BlocBuilder<LicenseListBloc, LicenseListState>;
typedef LicenseListListener = BlocListener<LicenseListBloc, LicenseListState>;
typedef LicenseListSelector<T>
    = BlocSelector<LicenseListBloc, LicenseListState, T>;
typedef LicenseListConsumer = BlocConsumer<LicenseListBloc, LicenseListState>;

class LicenseListBloc extends Cubit<LicenseListState> with BlocNavigator {
  LicenseListBloc({
    required this.navigator,
    required LicenseService service,
  }) : super(null) {
    service.licenses.then((value) => emit(value), onError: onError);
  }

  @override
  final GlobalKey<NavigatorState> navigator;

  void selectPackage(String packageName) =>
      LicenseDetailRoute(packageName).push(context);
}
