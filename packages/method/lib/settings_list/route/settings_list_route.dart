import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../settings_list.dart';

class SettingsListRoute extends GoRouteData {
  const SettingsListRoute();

  @override
  Widget build(BuildContext context) => const SettingsListPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
