import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:method_settings_list/settings_list.dart';

class SettingsListRoute extends GoRouteData {
  const SettingsListRoute({
    required this.onSelectData,
    required this.onSelectAppearance,
    required this.onSelectLicense,
    required this.onSelectFeedback,
    required this.onSelectPrivacy,
    required this.onSelectTerms,
  });

  static String name = "SettingsList";

  final VoidCallback onSelectData;
  final VoidCallback onSelectAppearance;
  final VoidCallback onSelectLicense;
  final VoidCallback onSelectFeedback;
  final VoidCallback onSelectPrivacy;
  final VoidCallback onSelectTerms;

  @override
  Widget build(BuildContext context, GoRouterState state) => SettingsListPage(
        onSelectData: onSelectData,
        onSelectAppearance: onSelectAppearance,
        onSelectLicense: onSelectLicense,
        onSelectFeedback: onSelectFeedback,
        onSelectPrivacy: onSelectPrivacy,
        onSelectTerms: onSelectTerms,
      );

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context, state), name: name);
}
