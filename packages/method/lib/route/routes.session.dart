part of 'routes.dart';

final _sessionsNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'settings');

final _sessionsRoutes = ShellRoute(
  navigatorKey: _sessionsNavigatorKey,
  builder: (context, state, child) => child,
  routes: [$sessionRoute],
);

@TypedGoRoute<SessionRoute>(
  path: '/sessions',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SessionDetailRoute>(path: 'detail/:id'),
  ],
)
class SessionRoute extends GoRouteData {
  const SessionRoute();

  @override
  Widget build(BuildContext context) => const SessionsTab();
}

class SessionDetailRoute extends GoRouteData {
  final String id;
  final Session? $extra;

  const SessionDetailRoute(this.id, {this.$extra});

  @override
  Widget build(BuildContext context) {
    final session = context.read<Repository>().sessions.getSync(id)!;

    return SessionPage.create(
      exercise: session.template,
      session: session,
    );
  }
}
