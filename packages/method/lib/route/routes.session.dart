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
  Widget build(BuildContext context) => FutureBuilder<Session?>(
        future: context.read<Repository>().sessions.get(id),
        builder: (context, snapshot) =>
            snapshot.hasData && snapshot.data != null
                ? SessionPage.create(
                    exercise: snapshot.data!.template,
                    session: snapshot.data!,
                  )
                : const CupertinoActivityIndicator(),
      );
}
