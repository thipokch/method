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
        GoRouteData.$route(
          path: ':id/edit',
          factory: $SessionEditRouteExtension._fromState,
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

extension $SessionEditRouteExtension on SessionEditRoute {
  static SessionEditRoute _fromState(GoRouterState state) => SessionEditRoute(
        state.params['id']!,
        initialIndex:
            _$convertMapValue('initial-index', state.queryParams, int.parse),
      );

  String get location => GoRouteData.$location(
        '/session/${Uri.encodeComponent(id)}/edit',
        queryParams: {
          if (initialIndex != null) 'initial-index': initialIndex!.toString(),
        },
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

T? _$convertMapValue<T>(
  String key,
  Map<String, String> map,
  T Function(String) converter,
) {
  final value = map[key];
  return value == null ? null : converter(value);
}

GoRoute get $exerciseFlow => GoRouteData.$route(
      path: '/exercise',
      factory: $ExerciseFlowExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: ':id',
          factory: $ExerciseDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: ':id/start',
          factory: $ExerciseStartRouteExtension._fromState,
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

extension $ExerciseStartRouteExtension on ExerciseStartRoute {
  static ExerciseStartRoute _fromState(GoRouterState state) =>
      ExerciseStartRoute(
        state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/exercise/${Uri.encodeComponent(id)}/start',
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
