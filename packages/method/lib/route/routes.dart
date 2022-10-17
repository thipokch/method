import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:method/route/sheet.dart';

import '../components/exercise_detail/route.dart';
import '../components/exercise_list/route.dart';
import '../components/home/route.dart';
import '../components/session_detail/route.dart';
import '../components/session_edit/route.dart';
import '../components/session_list/route.dart';
import '../components/settings/route.dart';

// See https://pub.dev/packages/go_router_builder
part 'routes.g.dart';

final rootNavigator = GlobalKey<NavigatorState>(debugLabel: 'root');
final sceneNavigator = GlobalKey<NavigatorState>(debugLabel: 'scene');
final modalNavigator = GlobalKey<NavigatorState>(debugLabel: 'modal');

final sceneRoute = ShellRoute(
  navigatorKey: sceneNavigator,
  pageBuilder: (context, state, child) => RootSheetPage(child: child),
  routes: [
    homeRoutes,
  ],
);

@TypedGoRoute<SettingsFlow>(
  path: '/settings',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<PrivacyRoute>(path: 'privacy'),
    TypedGoRoute<AppearanceRoute>(path: 'appearance'),
    TypedGoRoute<AcknowledgementListRoute>(
      path: 'acknowledgement',
      routes: [
        TypedGoRoute<AcknowledgementDetailRoute>(path: ':id'),
      ],
    ),
    // TypedGoRoute<DeveloperRoute>(path: 'developer'),
  ],
)
class SettingsFlow extends SettingsRoute {
  const SettingsFlow();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}

@TypedGoRoute<ExerciseFlow>(
  path: '/exercise',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ExerciseDetailRoute>(path: ':id'),
  ],
)
class ExerciseFlow extends ExerciseListRoute {
  const ExerciseFlow();

  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}

@TypedGoRoute<SessionFlow>(
  path: '/session',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SessionDetailRoute>(path: ':id/detail'),
    TypedGoRoute<SessionEditRoute>(path: ':id/edit'),
  ],
)
class SessionFlow extends SessionListRoute {
  const SessionFlow();
  @override
  Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
      NoTransitionPage(child: build(context));
}
