// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $exerciseRoute,
      $sessionRoute,
      $settingsRoute,
      $editorRoute,
    ];

GoRoute get $exerciseRoute => GoRouteData.$route(
      path: '/exercise',
      factory: $ExerciseRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'detail/:id',
          factory: $ExerciseDetailRouteExtension._fromState,
        ),
      ],
    );

extension $ExerciseRouteExtension on ExerciseRoute {
  static ExerciseRoute _fromState(GoRouterState state) => const ExerciseRoute();

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
        $extra: state.extra as Exercise?,
      );

  String get location => GoRouteData.$location(
        '/exercise/detail/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $sessionRoute => GoRouteData.$route(
      path: '/sessions',
      factory: $SessionRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'detail/:id',
          factory: $SessionDetailRouteExtension._fromState,
        ),
      ],
    );

extension $SessionRouteExtension on SessionRoute {
  static SessionRoute _fromState(GoRouterState state) => const SessionRoute();

  String get location => GoRouteData.$location(
        '/sessions',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SessionDetailRouteExtension on SessionDetailRoute {
  static SessionDetailRoute _fromState(GoRouterState state) =>
      SessionDetailRoute(
        state.params['id']!,
        $extra: state.extra as Session?,
      );

  String get location => GoRouteData.$location(
        '/sessions/detail/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $settingsRoute => GoRouteData.$route(
      path: '/settings',
      factory: $SettingsRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'acknowledgements',
          factory: $AcknowledgementRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'appearance',
          factory: $AppearanceRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'developer',
          factory: $DeveloperRouteExtension._fromState,
        ),
      ],
    );

extension $SettingsRouteExtension on SettingsRoute {
  static SettingsRoute _fromState(GoRouterState state) => const SettingsRoute();

  String get location => GoRouteData.$location(
        '/settings',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $AcknowledgementRouteExtension on AcknowledgementRoute {
  static AcknowledgementRoute _fromState(GoRouterState state) =>
      AcknowledgementRoute();

  String get location => GoRouteData.$location(
        '/settings/acknowledgements',
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

extension $DeveloperRouteExtension on DeveloperRoute {
  static DeveloperRoute _fromState(GoRouterState state) => DeveloperRoute();

  String get location => GoRouteData.$location(
        '/settings/developer',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

GoRoute get $editorRoute => GoRouteData.$route(
      path: '/editor',
      factory: $EditorRouteExtension._fromState,
    );

extension $EditorRouteExtension on EditorRoute {
  static EditorRoute _fromState(GoRouterState state) => const EditorRoute();

  String get location => GoRouteData.$location(
        '/editor',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
