import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/license_list_page.dart';

/// {@template license_list_route}
/// A description for LicenseListRoute
/// {@endtemplate}
class LicenseListRoute extends GoRouteData{
  /// {@macro license_list_route}
  const LicenseListRoute();

  @override
  Widget build(BuildContext context) => const LicenseListPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
