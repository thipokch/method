part of 'routes.dart';

final _homeNavigator = GlobalKey<NavigatorState>(debugLabel: 'home');

final _homeRoutes = ShellRoute(
  navigatorKey: _homeNavigator,
  builder: (context, state, child) => HomePage(
    child: child,
  ),
  routes: [
    _sessionsTabRoutes,
    _exercisesTabRoutes,
    _settingsTabRoutes,
  ],
);

final _sessionsTabNavigator = GlobalKey<NavigatorState>(debugLabel: 'sessions');

final _sessionsTabRoutes = ShellRoute(
  navigatorKey: _sessionsTabNavigator,
  builder: (context, state, child) => child,
  routes: [$sessionRoute],
);

final _settingsTabNavigator = GlobalKey<NavigatorState>(debugLabel: 'settings');

final _settingsTabRoutes = ShellRoute(
  navigatorKey: _settingsTabNavigator,

  builder: (context, state, child) => child,
  // pageBuilder: (context, state, child) => Sheet(body: child),
  routes: [$settingsRoute],
);

final _exerciseTabNavigator = GlobalKey<NavigatorState>(debugLabel: 'exercise');

final _exercisesTabRoutes = ShellRoute(
  navigatorKey: _exerciseTabNavigator,
  builder: (context, state, child) => child,
  routes: [$exerciseRoute],
);
