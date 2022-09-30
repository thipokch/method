part of 'routes.dart';

@TypedGoRoute<SettingsRoute>(
  path: '/settings',
  routes: [
    TypedGoRoute<AcknowledgementRoute>(path: 'acknowledgements'),
    TypedGoRoute<AppearanceRoute>(path: 'appearance'),
    TypedGoRoute<DeveloperRoute>(path: 'developer'),
  ],
)
class SettingsRoute extends GoRouteData {
  const SettingsRoute();

  @override
  Sheet buildPage(BuildContext context) => Sheet(body: const SettingsFlow());
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
