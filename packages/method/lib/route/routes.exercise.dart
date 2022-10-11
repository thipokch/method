part of 'routes.dart';

final _exercisesNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'settings');

final _exercisesRoutes = ShellRoute(
  navigatorKey: _exercisesNavigatorKey,
  builder: (context, state, child) => child,
  routes: [$exerciseRoute],
);

@TypedGoRoute<ExerciseRoute>(
  path: '/exercise',
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<ExerciseDetailRoute>(path: 'detail/:id'),
  ],
)
class ExerciseRoute extends GoRouteData {
  const ExerciseRoute();

  @override
  Widget build(BuildContext context) => const ExercisesTab();
}

class ExerciseDetailRoute extends GoRouteData {
  final String id;
  final Exercise? $extra;

  const ExerciseDetailRoute(this.id, {this.$extra});

  @override
  Widget build(BuildContext context) => ExercisePage.create(
        exercise: context.read<Repository>().exercises.getSync(id)!,
      );
}
