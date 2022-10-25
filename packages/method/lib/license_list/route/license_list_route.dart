import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../license_list.dart';

class LicenseListRoute extends GoRouteData {
  const LicenseListRoute();

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
      NoTransitionPage(child: build(context));
}
