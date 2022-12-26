import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../view/app_info_page.dart';

/// {@template app_info_route}
/// A description for AppInfoRoute
/// {@endtemplate}
class AppInfoRoute extends GoRouteData{
  /// {@macro app_info_route}
  const AppInfoRoute();

  @override
  Widget build(BuildContext context) => const AppInfoPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
