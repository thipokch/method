import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../settings_appearance.dart';

class SettingsAppearanceRoute extends GoRouteData {
  const SettingsAppearanceRoute();

  @override
  Widget build(BuildContext context) => const SettingsAppearancePage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
