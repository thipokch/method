// ignore_for_file: unused_element

part of 'routes.dart';

final _editorNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'editor');

final _editorRoutes = ShellRoute(
  navigatorKey: _editorNavigatorKey,
  builder: (context, state, child) => child,
  routes: [$editorRoute],
);

@TypedGoRoute<EditorRoute>(
  path: '/editor',
)
class EditorRoute extends GoRouteData {
  const EditorRoute();

  @override
  Widget build(BuildContext context) => const ExercisesTab();
}
