part of 'routes.dart';

@TypedGoRoute<SettingsRoute>(
  path: '/settings',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<AcknowledgementRoute>(path: 'acknowledgements'),
    TypedGoRoute<AppearanceRoute>(path: 'appearance'),
    TypedGoRoute<DeveloperRoute>(path: 'developer'),
  ],
)
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Widget build(BuildContext context) => const SettingsPage();
}

class AcknowledgementRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => const AcknowlegementsPage();
}

class AppearanceRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => const AppearancePage();
}

class DeveloperRoute extends GoRouteData {
  @override
  Widget build(BuildContext context) => const DeveloperPage();
}
