import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:method/components/session_list/route.dart';
import 'package:method/route/sheet.dart';
import 'package:method/view/home/home_page.dart';
import 'package:method/view/session/session_widget.dart';
import 'package:method_core/model/session.dart';
import 'package:method_repo/repository.dart';

import '../components/exercise_detail/route.dart';
import '../components/exercise_list/route.dart';
import '../components/session_edit/route.dart';
import '../components/settings/route.dart';

// See https://pub.dev/packages/go_router_builder
part 'routes.g.dart';
part 'routes.session.dart';

final rootNavigator = GlobalKey<NavigatorState>(debugLabel: 'root');
final sceneNavigator = GlobalKey<NavigatorState>(debugLabel: 'scene');
final modalNavigator = GlobalKey<NavigatorState>(debugLabel: 'modal');

final rootRouter = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: rootNavigator,
  initialLocation: const SessionRoute().location,
  routes: [
    ShellRoute(
      navigatorKey: sceneNavigator,
      pageBuilder: (context, state, child) => RootSheetPage(child: child),
      routes: [
        _homeRoutes,
      ],
    ),
  ],
);

final _homeNavigator = GlobalKey<NavigatorState>(debugLabel: 'home');

final _homeRoutes = ShellRoute(
  navigatorKey: _homeNavigator,
  // pageBuilder: (context, state, child) =>
  //     RootSheetPage(child: HomePage(child: child)),
  builder: (context, state, child) => HomePage(child: child),
  routes: [
    $sessionRoute
      // Workaround for go_router_builder #2672
      ..routes.insertAll(0, <GoRoute>[
        GoRoute(
          path: ":id/edit",
          parentNavigatorKey: rootNavigator,
          pageBuilder: (_, state) => SessionEditRoute(state.params["id"]!)
              .buildPageWithState(_, state),
        ),
      ]),
    $exerciseFlow,
    $settingsFlow,
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
}

@TypedGoRoute<ExerciseFlow>(
  path: '/exercise',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ExerciseDetailRoute>(path: ':id'),
  ],
)
class ExerciseFlow extends ExerciseListRoute {
  const ExerciseFlow();
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
}
