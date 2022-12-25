import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../license_list.dart';

class LicenseListRoute extends GoRouteData {
  const LicenseListRoute();

  static String name = "LicenseList";

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LicenseListBloc(
          navigator: context.read(),
          service: context.read(),
        ),
        child: const LicenseListPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      CupertinoPage(child: build(context), name: name);
}
