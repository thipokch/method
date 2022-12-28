import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:method_license_detail/license_detail.dart';
class LicenseDetailRoute extends GoRouteData {
  const LicenseDetailRoute(this.id);

  final String id;

  static String name = "LicenseDetail";

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LicenseDetailBloc(
          service: context.read(),
          packageName: id,
        ),
        child: const LicenseDetailPage(),
      );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context), name: name);
}
