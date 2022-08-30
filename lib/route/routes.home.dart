part of 'routes.dart';

@TypedGoRoute<HomeRoute>(path: '/home')
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Page buildPage(BuildContext context) =>
      RootSheet(builder: (context) => HomePage());
}
