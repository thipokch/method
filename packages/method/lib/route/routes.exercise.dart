part of 'routes.dart';

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
  Widget build(BuildContext context) => FutureBuilder<Exercise?>(
        future: context.read<Repository>().exercises.get(id),
        builder: (context, snapshot) =>
            snapshot.hasData && snapshot.data != null
                ? ExercisePage.create(exercise: snapshot.data!)
                : const CupertinoActivityIndicator(),
      );
}
