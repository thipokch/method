// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flow.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $settingsFlow,
    ];

GoRoute get $settingsFlow => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsFlowExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'data',
          factory: $SettingsDataRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'appearance',
          factory: $SettingsAppearanceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'license',
          factory: $LicenseListRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':id',
              factory: $LicenseDetailRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $SettingsFlowExtension on SettingsFlow {
  static SettingsFlow _fromState(GoRouterState state) => const SettingsFlow();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SettingsDataRouteExtension on SettingsDataRoute {
  static SettingsDataRoute _fromState(GoRouterState state) =>
      const SettingsDataRoute();

  String get location => GoRouteData.$location(
        '/settings/data',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SettingsAppearanceRouteExtension on SettingsAppearanceRoute {
  static SettingsAppearanceRoute _fromState(GoRouterState state) =>
      const SettingsAppearanceRoute();

  String get location => GoRouteData.$location(
        '/settings/appearance',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $LicenseListRouteExtension on LicenseListRoute {
  static LicenseListRoute _fromState(GoRouterState state) =>
      const LicenseListRoute();

  String get location => GoRouteData.$location(
        '/settings/license',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $LicenseDetailRouteExtension on LicenseDetailRoute {
  static LicenseDetailRoute _fromState(GoRouterState state) =>
      LicenseDetailRoute(
        state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/settings/license/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
