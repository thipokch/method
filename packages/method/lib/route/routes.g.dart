// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $settingsFlow,
      $exerciseFlow,
      $sessionFlow,
    ];

GoRoute get $settingsFlow => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsFlowExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'privacy',
          factory: $PrivacyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'appearance',
          factory: $AppearanceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'acknowledgement',
          factory: $AcknowledgementListRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: ':id',
              factory: $AcknowledgementDetailRouteExtension._fromState,
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

extension $PrivacyRouteExtension on PrivacyRoute {
  static PrivacyRoute _fromState(GoRouterState state) => PrivacyRoute();

  String get location => GoRouteData.$location(
        '/settings/privacy',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $AppearanceRouteExtension on AppearanceRoute {
  static AppearanceRoute _fromState(GoRouterState state) => AppearanceRoute();

  String get location => GoRouteData.$location(
        '/settings/appearance',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $AcknowledgementListRouteExtension on AcknowledgementListRoute {
  static AcknowledgementListRoute _fromState(GoRouterState state) =>
      AcknowledgementListRoute();

  String get location => GoRouteData.$location(
        '/settings/acknowledgement',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $AcknowledgementDetailRouteExtension on AcknowledgementDetailRoute {
  static AcknowledgementDetailRoute _fromState(GoRouterState state) =>
      AcknowledgementDetailRoute(
        id: state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/settings/acknowledgement/${Uri.encodeComponent(id)}',
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
      );

  String get location => GoRouteData.$location(
        '/session/${Uri.encodeComponent(id)}/edit',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
