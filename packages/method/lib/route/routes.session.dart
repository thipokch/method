part of 'routes.dart';

@TypedGoRoute<SessionRoute>(
  path: '/session',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<SessionDetailRoute>(path: 'detail/:id'),
    TypedGoRoute<SessionEditRoute>(path: 'edit/:id'),
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

class SessionEditRoute extends GoRouteData {
  final String id;

  SessionEditRoute(this.id);

  @override
  Widget build(BuildContext context) => SessionEditor.open(id: id);

  // @override
  // Page<void> buildPageWithState(BuildContext context, GoRouterState state) =>
  //     Sheet(body: SessionEditor.open(id: id));
}
