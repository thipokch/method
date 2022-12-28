// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $settingsRoutes,
    ];

GoRoute get $settingsRoutes => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsRoutesExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'appearance',
          factory: $SettingsAppearanceRouteExtension._fromState,
        ),
      ],
    );

extension $SettingsRoutesExtension on SettingsRoutes {
  static SettingsRoutes _fromState(GoRouterState state) =>
      const SettingsRoutes();

  String get location => GoRouteData.$location(
        '/settings',
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
