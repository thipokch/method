// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_flow.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $sessionFlow,
      $exerciseFlow,
      $settingsFlow,
    ];

GoRoute get $sessionFlow => GoRouteData.$route(
      path: '/session',
      factory: $SessionFlowExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':id/detail',
          factory: $SessionDetailRouteExtension._fromState,
        ),
      ],
    );

extension $SessionFlowExtension on SessionFlow {
  static SessionFlow _fromState(GoRouterState state) => const SessionFlow();

  String get location => GoRouteData.$location(
        '/session',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SessionDetailRouteExtension on SessionDetailRoute {
  static SessionDetailRoute _fromState(GoRouterState state) =>
      SessionDetailRoute(
        state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/session/${Uri.encodeComponent(id)}/detail',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $exerciseFlow => GoRouteData.$route(
      path: '/exercise',
      factory: $ExerciseFlowExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':id',
          factory: $ExerciseDetailRouteExtension._fromState,
        ),
      ],
    );

extension $ExerciseFlowExtension on ExerciseFlow {
  static ExerciseFlow _fromState(GoRouterState state) => const ExerciseFlow();

  String get location => GoRouteData.$location(
        '/exercise',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $ExerciseDetailRouteExtension on ExerciseDetailRoute {
  static ExerciseDetailRoute _fromState(GoRouterState state) =>
      ExerciseDetailRoute(
        state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/exercise/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $settingsFlow => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsFlowExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'privacy',
          factory: $SettingsPrivacyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'appearance',
          factory: $SettingsAppearanceRouteExtension._fromState,
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

extension $SettingsPrivacyRouteExtension on SettingsPrivacyRoute {
  static SettingsPrivacyRoute _fromState(GoRouterState state) =>
      const SettingsPrivacyRoute();

  String get location => GoRouteData.$location(
        '/settings/privacy',
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
