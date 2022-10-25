import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../license_detail.dart';

class LicenseDetailRoute extends GoRouteData {
  const LicenseDetailRoute(this.id);

  final String id;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LicenseDetailBloc(
          service: context.read(),
          packageName: id,
        ),
        child: const LicenseDetailPage(),
      );

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
