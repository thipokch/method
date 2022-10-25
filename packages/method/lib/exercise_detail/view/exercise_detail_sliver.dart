part of 'exercise_detail_view.dart';

class ExerciseDetailSliver extends StatelessWidget {
  const ExerciseDetailSliver({super.key});

  @override
  Widget build(BuildContext context) => ExerciseDetailBuilder(
        builder: (context, state) => state.maybeMap(
          started: (_) => SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: _.exercise.definitions.length,
              (context, index) => Text(
                _.exercise.definitions.elementAtOrNull(index)?.name ?? "Null",
              ),
            ),
          ),
          orElse: () =>
              const SliverFillRemaining(child: CupertinoActivityIndicator()),
        ),
      );
}
