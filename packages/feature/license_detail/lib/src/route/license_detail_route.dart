import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/license_detail_page.dart';

/// {@template license_detail_route}
/// A description for LicenseDetailRoute
/// {@endtemplate}
class LicenseDetailRoute extends GoRouteData{
  /// {@macro license_detail_route}
  const LicenseDetailRoute();

  @override
  Widget build(BuildContext context) => const LicenseDetailPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
