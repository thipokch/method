import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../settings_privacy.dart';

class SettingsPrivacyRoute extends GoRouteData {
  const SettingsPrivacyRoute();

  @override
  Widget build(BuildContext context) => const SettingsPrivacyPage();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
